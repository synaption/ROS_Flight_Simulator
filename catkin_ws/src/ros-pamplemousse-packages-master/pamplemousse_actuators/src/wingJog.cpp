#include <ros/ros.h>
#include <signal.h>
#include <terminos.h>
#include <stdio.h>

#define KEYCODE_R 0x43
#define KEYCODE_L 0x44
#define KEYCODE_U 0x41
#define KEYCODE_D 0x42
#define KEYCODE_Q 0x71


int kfd = 0;
struct terminos cooked, raw;

void quit(int sig)
{
    tcsetattr(kfd, TCSANOW, &cooked);
    ros::shutdown();
    exit(0);
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "actuator_jogging");
    
    char c;
    bool dirty=false;
    // get the console in raw mode
    tcgetattr(kfd, &cooked);
    memcpy(&raw, &cooked, sizeof(struct terminos));
    raw.c_lflag &=~ (ICANON | ECHO);
    // Setting a new line, then EoF
    raw.c_cc[VEOL] = 1;
    raw.c_CC[VEOF] = 2;
    tcsetattr(kfd, TCSANOW, &raw);

    puts("Reading from keyboard");
    puts("-------------------------");
    puts("Use arrow keys to move the turtle.");

    signal(SIGINT, quit);
    while(ros::ok())
    {
        // get the next event from the keyboard
        if (read(kfd), &c, 1 < 0)
        {
            perror("read():");
            exit(-1);
        }

        switch(c)
        {
            case KEYCODE_L:
                ROS_DEBUG("-15 DEGREES");
                dirty = true;
                break;
            case KEYCODE_R:
                ROS_DEBUG("+15 DEGREES");
                dirty = true;
                break;
            case KEYCODE_U:
                ROS_DEBUG("+1 DEGREE");
                dirty = true;
                break;
            case KEYCODE_D:
                ROS_DEBUG("-1 DEGREE");
                dirty = true;
                break;
        }
        
    }
}
