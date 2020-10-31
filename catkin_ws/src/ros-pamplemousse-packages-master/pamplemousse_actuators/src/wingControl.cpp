/*
 * wingControl.cpp
 * 
 * ROS node for controlling actuation motors.
 * 
 * The actuators, Nanotec PD6-CB80M048030-E-09, use CANopen for control. Rather than
 * implement a complictated CANopen library. This file implements a barebones control
 * using SocketCAN. cansend.c from the can-utils library is used as a starting point.
 *
 * References:
 * 1. https://github.com/linux-can/can-utils
 * 2. https://github.com/craigpeacock/CAN-Examples
 *
 */
#include "wingControl.h"


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

int openCanSocket()
{
    int s; /* can raw socket */
    struct sockaddr_can addr;
    struct ifreq ifr;

    /* catch interrupts */
    signal(SIGINT, exit_program);
    signal(SIGTERM, exit_program);

    /* open socket */
    s = socket(PF_CAN, SOCK_RAW, CAN_RAW);

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

NanotecActuator::NanotecActuator(int8_t id, int s)
{
    node_id = id;
    socket = s;
    send_id = EXPEDITED_TRANSFER_SEND + node_id;
    response_id = EXPEDITED_TRANSFER_RESPONSE + node_id;
}

void NanotecActuator::set_operating_mode(std::vector<struct command_queue> &queue, int operating_mode)
{
    struct can_frame send_frame, response_frame;
    unsigned char send_data[CANOPEN_DATA_LEN];
    dec2hex<int32_t>(operating_mode, send_data, _LITTLE_ENDIAN);
    send_frame.can_id = send_id;
    assignCanopenFrameData(SEND_1_BYTES, OBJ_MODES_OF_OPERATION, send_data, send_frame);

    unsigned char response_data[CANOPEN_DATA_LEN];
    dec2hex<int32_t>(0, response_data, _LITTLE_ENDIAN);
    response_frame.can_id = response_id;
    assignCanopenFrameData(RESPONSE_BYTES, OBJ_MODES_OF_OPERATION, response_data, response_frame);
    
    // Create a command queue element
    struct command_queue cmd;
    cmd.send_can_frame = send_frame;
    cmd.response_can_frame = response_frame; 
    queue.push_back(cmd);
}

void NanotecActuator::enter_position_mode(std::vector<struct command_queue> &queue)
{
    struct command_queue cmd;
    struct can_frame send_frame, response_frame;

    send_frame.can_id = send_id;
    response_frame.can_id = response_id;

    set_operating_mode(queue, profile_position);
    enable_power_state_machine(queue);
   
    // Set position mode to execute immediately
    unsigned char send_data[CANOPEN_DATA_LEN] = {0x2F, 0x00, 0x00, 0x00};
    assignCanopenFrameData(SEND_2_BYTES, OBJ_CONTROLWORD, send_data, send_frame);
    unsigned char response_data[CANOPEN_DATA_LEN];
    dec2hex<int32_t>(0, response_data, _LITTLE_ENDIAN);
    assignCanopenFrameData(RESPONSE_BYTES, OBJ_CONTROLWORD, response_data, response_frame);
    cmd.send_can_frame = send_frame;
    cmd.response_can_frame = response_frame;
    queue.push_back(cmd);
}

/*
 * Sets the value of 607Ah - target position
 */
void NanotecActuator::go_to(std::vector<struct command_queue> &queue, int position)
{
    // Set up frame with `send_id`
    // assign data and add to queue for each frame to be sent.
    // Typically, push back vector with new frames. If the message is high priority,
    // push front.
    struct command_queue cmd;
    struct can_frame send_frame, response_frame;
    send_frame.can_id = send_id;
    response_frame.can_id = response_id;

    // Resets the controlword to get ready for the next command.
    unsigned char send_data[CANOPEN_DATA_LEN] = {0x2F, 0x00, 0x00, 0x00};
    assignCanopenFrameData(SEND_2_BYTES, OBJ_CONTROLWORD, send_data, send_frame);
    unsigned char response_data[CANOPEN_DATA_LEN];
    dec2hex<int32_t>(0, response_data, _LITTLE_ENDIAN);
    assignCanopenFrameData(RESPONSE_BYTES, OBJ_CONTROLWORD, response_data, response_frame);
    cmd.send_can_frame = send_frame;
    cmd.response_can_frame = response_frame;
    queue.push_back(cmd);

    dec2hex<int32_t>(position, send_data, _LITTLE_ENDIAN);
    assignCanopenFrameData(SEND_4_BYTES, OBJ_TARGET_POSITION, send_data, send_frame);
    assignCanopenFrameData(RESPONSE_BYTES, OBJ_TARGET_POSITION, response_data, response_frame);
    cmd.send_can_frame = send_frame;
    cmd.response_can_frame = response_frame;
    queue.push_back(cmd);
    
    // Execute the command
    send_data[0] = 0x3F;
    assignCanopenFrameData(SEND_2_BYTES, OBJ_CONTROLWORD, send_data, send_frame);
    assignCanopenFrameData(RESPONSE_BYTES, OBJ_CONTROLWORD, response_data, response_frame);
    cmd.send_can_frame = send_frame;
    cmd.response_can_frame = response_frame;
    queue.push_back(cmd);
}

/*
 * Runs through the procedure to enable the power state machine.
 */
void NanotecActuator::enable_power_state_machine(std::vector<struct command_queue> &queue)
{
    struct command_queue cmd;
    struct can_frame send_frame, response_frame;
    send_frame.can_id = send_id;
    response_frame.can_id = response_id;

    // Set controlword
    unsigned char send_data[CANOPEN_DATA_LEN] = {0x06, 0x00, 0x00, 0x00};
    assignCanopenFrameData(SEND_2_BYTES, OBJ_CONTROLWORD, send_data, send_frame);
    unsigned char response_data[CANOPEN_DATA_LEN];
    dec2hex<int32_t>(0, response_data, _LITTLE_ENDIAN);
    assignCanopenFrameData(RESPONSE_BYTES, OBJ_CONTROLWORD, response_data, response_frame);
    cmd.send_can_frame = send_frame;
    cmd.response_can_frame = response_frame;
    queue.push_back(cmd);

    // Set controlword
    send_data[0] = 0x07;
    assignCanopenFrameData(SEND_2_BYTES, OBJ_CONTROLWORD, send_data, send_frame);
    cmd.send_can_frame = send_frame;
    // Expects same response as previous cmd
    queue.push_back(cmd);

    // Set controlword
    send_data[0] = 0x0F;
    assignCanopenFrameData(SEND_2_BYTES, OBJ_CONTROLWORD, send_data, send_frame);
    cmd.send_can_frame = send_frame;
    // Expects same response as previous cmd
    queue.push_back(cmd);
}

void NanotecActuator::test_run(std::vector<struct command_queue> &queue)
{
    set_operating_mode(queue, velocity);
    enable_power_state_machine(queue);

    struct command_queue cmd;
    struct can_frame send_frame, response_frame;
    send_frame.can_id = send_id;
    response_frame.can_id = response_id;

    // Set target velocity
    unsigned char send_data[CANOPEN_DATA_LEN] = {0xC8, 0x00, 0x00, 0x00};
    assignCanopenFrameData(SEND_2_BYTES, OBJ_TARGET_VELOCITY, send_data, send_frame);
    unsigned char response_data[CANOPEN_DATA_LEN];
    dec2hex<int32_t>(0, response_data,  _LITTLE_ENDIAN);
    assignCanopenFrameData(RESPONSE_BYTES, OBJ_TARGET_VELOCITY, response_data, response_frame);
    cmd.send_can_frame = send_frame;
    cmd.response_can_frame = response_frame;
    queue.push_back(cmd);
}

int sendCommands(std::vector<struct can_frame> &messages, NanotecActuator &actuator, ros::Rate loop_rate)
{
    // Create a publisher for the actuator states for each wing 
    // (canard, port, starboard)
    // ros::Publisher canard_actuator_states_pub = n.advertise<pamplemousse_actuators::wingActuatorStates>("wingActuatorStates", states_freq);
    
    // Queue of CAN frames to be transmitted and expected responses
    std::vector<struct command_queue> queue;
    struct command_queue current_command;
    queue_status status;
    status.response_received = true; // Initialize to true so that the process loop
                                     // starts running properly

    int cmd_position = 0;  // Debugging only
    
    actuator.enter_position_mode(queue);
    struct can_frame message_to_process;
    while (ros::ok())
    {
        // Find all messages targeted to this device.
        //
        // Since we are using the expedited transfer protocol, the messages should
        // have CAN ID of (580 + node ID). I.e. if this actuator has node ID 2, any
        // messages with CAN ID 582 should be removed from the message buffer and
        // processed.
        //
        // How do we make sure we don't miss a message? Can we look at the latest
        // message exclusively, or is there a chance that a message gets missed
        
        processQueue(actuator.socket, queue, current_command, status);
        locker.lock();
        for (int i=messages.size()-1; i>=0; i--) {
            // Look for the expected response to the current command
            if (messages[i].can_id == current_command.response_can_frame.can_id) {
                unsigned char msg_cob_id[3] = {messages[i].data[1], messages[i].data[2], messages[i].data[3]};
                unsigned char expected_cob_id[3] = {current_command.response_can_frame.data[1], current_command.response_can_frame.data[2], current_command.response_can_frame.data[3]};
                bool cob_id_equal = true;
                for (int i=0; i<3; i++) {
                    if (msg_cob_id[i] != expected_cob_id[i]) {
                            cob_id_equal = false;
                    break;
                    }
                }
                if (cob_id_equal) {
                    status.response_received = true;
                    message_to_process = messages[i];
                    messages.erase(messages.begin()+i);
                    break;
                }
            }
        }
        locker.unlock(); // Unlock messages after doing things with it
        processMessage(message_to_process);
        loop_rate.sleep();
    }
    return 0;
}

void processMessage(struct can_frame message)
{
    unsigned char obj_id[2], sub_idx, value[4], response_obj_id[2];
    obj_id[0] = message.data[1];
    obj_id[1] = message.data[2];
    sub_idx   = message.data[3];
    value[0]  = message.data[4];
    value[1]  = message.data[5];
    value[2]  = message.data[6];
    value[3]  = message.data[7];

    unsigned char canopen_obj_id[3] = {obj_id[1], obj_id[0], sub_idx};
    // Hardcode cases where we need the data
    // switch()
}

void processQueue(int s, std::vector<struct command_queue> &queue,
                  struct command_queue &current_command, queue_status &status) 
{
    // If the status states that a response was received, get a new message to process
    if (status.ready_for_new_command) {
        // make a copy of the next message in the queue if there are elements in the
        // queue vector
        if (queue.size() > 0)
        {
            current_command = queue[0];
            queue.erase(queue.begin());  // Remove this command from the queue
            // Send the CAN frame
            sendCanFrame(s, current_command.send_can_frame);
            // Update the queue status
            status.send_time = high_res_clock::now();
            status.response_received = false;
            status.retransmission_tried = false;
            status.ready_for_new_command = false; 
            return; // The thread running this function needs to process responses,
                    // so return here.
        }
        return;  // No new commands
    }

    // If a response has been received, change status to ready for new cmd and return
    if (status.response_received)
    {
        printf("Response received!\n");
        status.ready_for_new_command = true;
        return;
    }
    else // if no response received
    {
        fsec time_elapsed = high_res_clock::now() - status.send_time;
        // if the amount of time elapsed exceeds the amount of time allowed for waiting
        // and retransmission hasn't been tried, send the command again
        if (time_elapsed.count() > TIME_TO_WAIT_FOR_A_RESPONSE)
        {
            if (status.retransmission_tried)
            {
                // TODO: Send alert that retransmission of a message failed
                printf("No response received after retransmission: %fs elapsed, continuing.\n", time_elapsed.count());
                printf("- Time to wait: %f\n", TIME_TO_WAIT_FOR_A_RESPONSE);
                status.ready_for_new_command = true;
                return;
            }
            else
            {
                // Retransmit once
                printf("No response received after %fs, retransmitting\n", time_elapsed.count());
                printf("- Time to wait: %f\n", TIME_TO_WAIT_FOR_A_RESPONSE);
                sendCanFrame(s, current_command.send_can_frame);
                status.send_time = high_res_clock::now();
                status.retransmission_tried = true;
                return;
            }
        }
        return;
    }
    return;
}

/*
 * Listens to the CANbus and appends a vector with new messages
 */
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
    ros::init(argc, argv, "wing_control_node");
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

    // Initialize Actuators
    NanotecActuator canard_actuator(1, s), port_actuator(2, s), starboard_actuator(3, s);
    
    // Create threads
    boost::thread canardCommander(sendCommands, boost::ref(can_messages), canard_actuator, commander_rate);
    boost::thread portCommander(sendCommands, boost::ref(can_messages), port_actuator, commander_rate);
    boost::thread starboardCommander(sendCommands, boost::ref(can_messages), starboard_actuator, commander_rate);
    boost::thread listener(canListener, boost::ref(can_messages), s, listener_rate, can_pub_freq);

    ros::AsyncSpinner spinner(4);
    spinner.start();
    ros::waitForShutdown();
        
    canardCommander.join();
    portCommander.join();
    starboardCommander.join();
    listener.join();

    close(s);
    
    ros::shutdown();

    return 0;
}
