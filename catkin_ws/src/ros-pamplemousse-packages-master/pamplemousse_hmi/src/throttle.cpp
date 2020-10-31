#include "throttle.h"


const char* BBB_CAN_IF = "can1";
std::mutex locker;

std::string swapEndianness(std::string hex_string)
{
    std::string tmp = "";
    for (int i=0; i<=hex_string.length()-2; i=i+2)
    {
        tmp = hex_string.substr(i, 2) + tmp;
    }
    return tmp;
}

template< typename T >
void dec2hex( T val, unsigned char* hexNum, int endianness )
{
    // TODO: Make this work for non-4-byte values
    if (endianness == _BIG_ENDIAN) {
        hexNum[0] = (val >> 24) & 0xFF;
        hexNum[1] = (val >> 16) & 0xFF;
        hexNum[2] = (val >> 8) & 0xFF;
        hexNum[3] = val & 0xFF;
    } else {
        hexNum[3] = (val >> 24) & 0xFF;
        hexNum[2] = (val >> 16) & 0xFF;
        hexNum[1] = (val >> 8) & 0xFF;
        hexNum[0] = val & 0xFF;
    }
}

/*
 * assignCanopenFrameData()
 *
 */
int assignCanopenFrameData(unsigned char canopen_data_length,
        const unsigned char* canopen_obj_id, unsigned char* canopen_data, struct can_frame& cf)
{
    cf.data[0] = canopen_data_length;
    cf.data[1] = canopen_obj_id[0];
    cf.data[2] = canopen_obj_id[1];
    cf.data[3] = canopen_obj_id[2];
    cf.data[4] = canopen_data[0];
    cf.data[5] = canopen_data[1];
    cf.data[6] = canopen_data[2];
    cf.data[7] = canopen_data[3];
    cf.can_dlc = CAN_MAX_DLEN;
    return 0;
}

int openJ1939Socket()
{
    int s; /* can raw socket */
    struct sockaddr_can addr;
    struct ifreq ifr;

    /* catch interrupts */
    signal(SIGINT, exit_program);
    signal(SIGTERM, exit_program);

    /* open socket */
    s = socket(PF_CAN, SOCK_DGRAM, CAN_J1939);

    strcpy(ifr.ifr_name, BBB_CAN_IF);
    ioctl(s, SIOCGIFINDEX, &ifr);

    addr.can_family = AF_CAN;
    addr.can_ifindex = ifr.ifr_ifindex;

    bind(s, (struct sockaddr *)&addr, sizeof(addr));
    return s;
}

int sendCanFrame(int s, struct can_frame frame)
{
    /* send frame */
    if (write(s, &frame, sizeof(struct can_frame)) != sizeof(struct can_frame))
    {
        perror("write");
        return 1;
    }
    return 0;
}

int canListener(std::vector<struct can_frame>& messages, int socket, ros::Rate loop_rate, int pub_freq)
{
    // Publish all messages to a ROS Topic
    // ros::Publisher actuator_can_messages = n.advertise<pamplemousse_actuators::can_frame>("wingActuatorCanFrames", pub_freq)

    int nbytes;
    struct can_frame frame;

    while (ros::ok()) {
        nbytes = read(socket, &frame, sizeof(struct can_frame));
        if (nbytes < 0) {
            perror("can raw socket read");
            return 1;
        }

        /* paranoid check ... */
        if (nbytes < sizeof(struct can_frame)) {
            fprintf(stderr, "read: incomplete CAN frame\n");
            return 1;
        }
        
        locker.lock();
        messages.push_back(frame);
        locker.unlock();
        printf("0X%03X [%d] ", frame.can_id, frame.can_dlc);
        
        for (int i=0; i < frame.can_dlc; i++)
            printf("%02X ", frame.data[i]);

        printf("\r\n");
    }
    return 0;
}

/*
 * Clean program exit on interrupt signal
 */
void exit_program(int signum)
{
    exit(signum);
}

int main(int argc, char **argv)
{
    // Initialize ROS and name the node
    ros::init(argc, argv, "throttle_node");
    ros::NodeHandle n;

    int can_pub_freq = 100;    // Hz
    int commander_freq = 1000;  // Hz
    int listener_freq = 10000;  // Hz

    ros::Rate commander_rate(commander_freq);
    ros::Rate listener_rate(listener_freq);
    
    // Open a CANSocket
    int s = openCanSocket();
   
    // Create a received message buffer
    std::vector<struct can_frame> can_messages;

    // Create threads
    boost::thread canardCommander(sendCommands, boost::ref(can_messages), canard_actuator, commander_rate);

    ros::AsyncSpinner spinner(4);
    spinner.start();
    ros::waitForShutdown();
        
    canardCommander.join();
    listener.join();

    close(s);
    
    ros::shutdown();

    return 0;
}
