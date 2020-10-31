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
#include <csignal>
#include <chrono> 
#include <iomanip>
#include <iostream>
#include <mutex>
#include <sstream>
#include <stdlib.h>
#include <unistd.h>
#include <vector>

#include <net/if.h>
#include <sys/ioctl.h>
#include <sys/socket.h>

#include <linux/can.h>
#include <linux/can/raw.h>

#include <boost/thread.hpp>

#include "ros/ros.h"
#include "ros/console.h"

#include "pamplemousse_actuators/wingActuatorCommands.h"
#include "pamplemousse_actuators/wingActuatorStates.h"


const char CANID_DELIM = '#';
const char DATA_SEPERATOR = '.';
const int CANOPEN_DATA_LEN = 4;  // Always send 4 bytes of data
const int _LITTLE_ENDIAN = 0;
const int _BIG_ENDIAN = 1;

const canid_t EXPEDITED_TRANSFER_SEND = 0x600;
const canid_t EXPEDITED_TRANSFER_RESPONSE = 0x580;
const canid_t RESET_CAN_ID = 0x000;

// These shouldn't be strings
const unsigned char SEND_X_BYTES = 0x20;
const unsigned char SEND_1_BYTES = 0x2F;
const unsigned char SEND_2_BYTES = 0x2B;
const unsigned char SEND_3_BYTES = 0x27;
const unsigned char SEND_4_BYTES = 0x23;

const unsigned char RECV_X_BYTES = 0x40;
const unsigned char RECV_1_BYTES = 0x4F;
const unsigned char RECV_2_BYTES = 0x4B;
const unsigned char RECV_3_BYTES = 0x47;
const unsigned char RECV_4_BYTES = 0x43;

const unsigned char RESPONSE_BYTES = 0x60;
// Maximum length of time to wait for a response to a command to a motor
const float TIME_TO_WAIT_FOR_A_RESPONSE = 0.01;  // 10 ms

// Subset of Nanotec object dictionary
//
// Bytes are in little-endian format.
//
// Ex.
//  Index: 607Ah, Subindex: 00  -> "7A.60.00"
const unsigned char OBJ_CONTROLWORD[3] = {0x40, 0x60, 0x00};
const unsigned char OBJ_STATUSWORD[3] = {0x41, 0x60, 0x00};
const unsigned char OBJ_MODES_OF_OPERATION[3] = {0x60, 0x60, 0x00};
const unsigned char OBJ_MODES_OF_OPERATION_DISPLAY[3] = {0x61, 0x60, 0x00};
const unsigned char OBJ_TARGET_POSITION[3] = {0x7A, 0x60, 0x00};
const unsigned char OBJ_TARGET_VELOCITY[3] = {0x42, 0x60, 0x00};
const unsigned char OBJ_POSITION_ACTUAL_VALUE[3] = {0x64, 0x60, 0x00};
const unsigned char OBJ_VELOCITY_ACTUAL_VALUE[3] = {0x6C, 0x60, 0x00};

typedef std::chrono::high_resolution_clock high_res_clock;
typedef std::chrono::duration<float> fsec;

enum modes_of_operation
{
    auto_setup = -2,
    clock_direction,
    no_mode,
    profile_position,
    velocity,
    profile_velocity,
    profile_torque,
    reserved,
    homing,
    interpolated_position,
    cyclic_synchronous_position,
    cyclic_synchronous_torque
};

struct command_queue
{
    struct can_frame send_can_frame;
    struct can_frame response_can_frame;
};

struct queue_status
{
    std::chrono::time_point<std::chrono::high_resolution_clock> send_time;
    bool response_received;
    bool retransmission_tried;
    bool ready_for_new_command;
};

template< typename T >
void dec2hex(T, unsigned char*, int);

/*
 * assignCanFrameData()
 *
 * Assumes properly formatted data
 *
 * data = 00.00.00.00
 *
 */
int assignCanFrameData(unsigned char, unsigned char*, unsigned char*, struct can_frame&);

int sendCanFrame(__u32, struct can_frame);

void exit_program(int);

class NanotecActuator {
    public:
        int8_t node_id;
        int socket;
        canid_t send_id, response_id;

        NanotecActuator(int8_t, int);

        void reset_node(std::vector<struct command_queue>&);

        void set_operating_mode(std::vector<struct command_queue>&, int operating_mode);

        void enter_position_mode(std::vector<struct command_queue>&);
        
        /*
         * Sets the value of 607Ah - target position
         */
        void go_to(std::vector<struct command_queue>&, int);
        
        /*
         * Runs through the procedure to enable the power state machine.
         */
        void enable_power_state_machine(std::vector<struct command_queue>&);
        
        void test_run(std::vector<struct command_queue>&);
};

int sendCommands(std::vector<struct can_frame>&, NanotecActuator&, ros::Rate);

void processMessage(struct can_frame);

void processQueue(int, std::vector<struct command_queue>&,
                  struct command_queue&,  queue_status&); 

int canListenener(std::vector<struct can_frame>&, int, ros::Rate);

int openCanSocket();
