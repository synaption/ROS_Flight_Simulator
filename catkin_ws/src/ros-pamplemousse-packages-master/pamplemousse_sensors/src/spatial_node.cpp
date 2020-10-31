#include <sstream>

#include "ros/ros.h"
#include "ros/console.h"

#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <math.h>
#include <unistd.h>
#include <boost/array.hpp>

// Advanced Navigation, Spatial SDK
#include "spatial_ros/rs232.h"
#include "spatial_ros/an_packet_protocol.h"
#include "spatial_ros/spatial_packets.h"

#include "pamplemousse_sensors/SpatialState.h"

#define RADIANS_TO_DEGREES (180.0/M_PI)


int an_packet_transmit(an_packet_t *an_packet) {
	an_packet_encode(an_packet);
	return SendBuf(an_packet_pointer(an_packet), an_packet_size(an_packet));
}

void set_sensor_ranges()
{
	an_packet_t *an_packet;
	sensor_ranges_packet_t sensor_ranges_packet;

	sensor_ranges_packet.permanent = TRUE;
	sensor_ranges_packet.accelerometers_range = accelerometer_range_4g;
	sensor_ranges_packet.gyroscopes_range = gyroscope_range_500dps;
	sensor_ranges_packet.magnetometers_range = magnetometer_range_2g;

	an_packet = encode_sensor_ranges_packet(&sensor_ranges_packet);

	an_packet_transmit(an_packet);

    // Release packet to prevent memory leakage
	an_packet_free(&an_packet);
}

void set_baud_rates(uint32_t primary_baud_rate, uint32_t gpio_1_2_baud_rate, uint32_t auxiliary_baud_rate)
{
    an_packet_t *an_packet;
    baud_rates_packet_t baud_rates_packet;

    baud_rates_packet.permanent = TRUE;
    baud_rates_packet.primary_baud_rate = primary_baud_rate;
    baud_rates_packet.gpio_1_2_baud_rate = gpio_1_2_baud_rate;
    baud_rates_packet.auxiliary_baud_rate = auxiliary_baud_rate;
    baud_rates_packet.reserved = 0;

    an_packet = encode_baud_rates_packet(&baud_rates_packet);

    an_packet_transmit(an_packet);

    an_packet_free(&an_packet);
}

// Sets UTC synchronisation and the master packet timer period
//
// @param utc_sync Synchronise packet timer with UTC time
// @param period Value in microseconds that sets the master packet timer period
void set_packet_timer_period(bool utc_sync, uint8_t period)
{
    an_packet_t *an_packet;
    packet_timer_period_packet_t packet_timer_period_packet;

    packet_timer_period_packet.permanent = TRUE;
    packet_timer_period_packet.utc_synchronisation = utc_sync;
    packet_timer_period_packet.packet_timer_period = period;

    an_packet = encode_packet_timer_period_packet(&packet_timer_period_packet);
    an_packet_transmit(an_packet);
    an_packet_free(&an_packet);
}

// Sets the packet ID and period for continuously transmitted packets.
void set_packet_rates(bool clear_packets, uint8_t packet_id, uint32_t period)
{
    an_packet_t *an_packet;
    packet_periods_packet_t packet_periods_packet;
    packet_period_t packet_period;

    packet_period.packet_id = packet_id;
    packet_period.period = period;

    packet_periods_packet.permanent = TRUE;
    packet_periods_packet.clear_existing_packets = clear_packets;
    packet_periods_packet.packet_periods[0] = packet_period;

    an_packet = encode_packet_periods_packet(&packet_periods_packet);
    an_packet_transmit(an_packet);
    an_packet_free(&an_packet);
}

void send_request_packet(uint8_t packet_id)
{
	an_packet_t *an_packet;
    an_packet = encode_request_packet(packet_id);
    an_packet_transmit(an_packet);
    an_packet_free(&an_packet);    
}

template<class T, size_t N>
boost::array<T,N> convert( float (& v)[N] )
{ 
    boost::array<T,N> r;
    std::copy( std::begin(v), std::end(v), r.begin() );
    return r;
}

int main(int argc, char **argv)
{
    // Declare state_msg and resize arrays
    pamplemousse_sensors::SpatialState state_msg;
    // ROS sequence ID: consecuitively increasing ID 
    unsigned long seq=0;

    // Initialize ROS and name the node
    ros::init(argc, argv, "spatial_node");
    ros::NodeHandle n;
    // Publish data to `SpatialState` with a buffer of 100 messages
    ros::Publisher state_pub = n.advertise<pamplemousse_sensors::SpatialState>("SpatialState", 100);
    ros::Rate rate(1000);

    an_decoder_t an_decoder;
    an_packet_t *an_packet;
    system_state_packet_t system_state_packet;

    int bytes_received;

    // UART4 is used for INS comms - refer to cape schematics
    // char *comport = "/dev/ttyS4";
    char* comport = "/dev/ttyUSB0";
    int baudrate = 500000;
    printf("Opening comm port");
    if (OpenComport(comport, baudrate))
    {
        printf("Could not open serial port\n");
        exit(EXIT_FAILURE);
    }
    an_decoder_initialise(&an_decoder);
    set_sensor_ranges();
    set_packet_timer_period(TRUE, 1000);
    set_baud_rates(baudrate, baudrate, baudrate);
    set_packet_rates(TRUE, packet_id_system_state, 5);

    while (ros::ok())
    {
        if ((bytes_received = PollComport(an_decoder_pointer(&an_decoder), an_decoder_size(&an_decoder))) > 0)
        {
            /* increment the decode buffer length by the number of bytes received */
            an_decoder_increment(&an_decoder, bytes_received);

            /* decode all the packets in the buffer */
            while ((an_packet = an_packet_decode(&an_decoder)) != NULL)
            {
                /* copy all the binary data into the typedef struct for the packet */
                /* this allows easy access to all the different values             */
                if (decode_system_state_packet(&system_state_packet, an_packet) == 0) {
                    // Set the header values
                    ROS_INFO("Packet pitch: [%.2f]", system_state_packet.orientation[1]);
                    state_msg.header.stamp = ros::Time::now();
                    state_msg.header.seq = seq;
                    // Iterate sequence ID
                    seq+=1;
                    //
                    // Set message values
                    //
                    // - System Status
                    state_msg.system_status.system_failure                  = system_state_packet.system_status.b.system_failure;
                    state_msg.system_status.accelerometer_sensor_failure    = system_state_packet.system_status.b.accelerometer_sensor_failure;
                    state_msg.system_status.gyroscope_sensor_failure        = system_state_packet.system_status.b.gyroscope_sensor_failure;
                    state_msg.system_status.magnetometer_sensor_failure     = system_state_packet.system_status.b.magnetometer_sensor_failure;
                    state_msg.system_status.pressure_sensor_failure         = system_state_packet.system_status.b.pressure_sensor_failure;
                    state_msg.system_status.gnss_failure                    = system_state_packet.system_status.b.gnss_failure;
                    state_msg.system_status.accelerometer_over_range        = system_state_packet.system_status.b.accelerometer_over_range;
                    state_msg.system_status.gyroscope_over_range            = system_state_packet.system_status.b.gyroscope_over_range;
                    state_msg.system_status.magnetometer_over_range         = system_state_packet.system_status.b.magnetometer_over_range;
                    state_msg.system_status.pressure_over_range             = system_state_packet.system_status.b.pressure_over_range;
                    state_msg.system_status.minimum_temperature_alarm       = system_state_packet.system_status.b.minimum_temperature_alarm;
                    state_msg.system_status.maximum_temperature_alarm       = system_state_packet.system_status.b.maximum_temperature_alarm;
                    state_msg.system_status.low_voltage_alarm               = system_state_packet.system_status.b.low_voltage_alarm;
                    state_msg.system_status.high_voltage_alarm              = system_state_packet.system_status.b.high_voltage_alarm;
                    state_msg.system_status.gnss_antenna_disconnected       = system_state_packet.system_status.b.gnss_antenna_disconnected;
                    state_msg.system_status.serial_port_overflow_alarm      = system_state_packet.system_status.b.serial_port_overflow_alarm;
                
                    // - Filter Status
                    state_msg.filter_status.ins_filter_initialised          = system_state_packet.filter_status.b.ins_filter_initialised;
                    state_msg.filter_status.heading_initialised             = system_state_packet.filter_status.b.heading_initialised;
                    state_msg.filter_status.utc_time_initialised            = system_state_packet.filter_status.b.utc_time_initialised;
                    state_msg.filter_status.gnss_fix_type                   = system_state_packet.filter_status.b.gnss_fix_type;
                    state_msg.filter_status.event1_flag                     = system_state_packet.filter_status.b.event1_flag;
                    state_msg.filter_status.event2_flag                     = system_state_packet.filter_status.b.event2_flag;
                    state_msg.filter_status.internal_gnss_enabled           = system_state_packet.filter_status.b.internal_gnss_enabled;
                    state_msg.filter_status.magnetic_heading_enabled        = system_state_packet.filter_status.b.magnetic_heading_enabled;
                    state_msg.filter_status.velocity_heading_enabled        = system_state_packet.filter_status.b.velocity_heading_enabled;
                    state_msg.filter_status.atmospheric_altitude_enabled    = system_state_packet.filter_status.b.atmospheric_altitude_enabled;
                    state_msg.filter_status.external_position_active        = system_state_packet.filter_status.b.external_position_active;
                    state_msg.filter_status.external_velocity_active        = system_state_packet.filter_status.b.external_velocity_active;
                    state_msg.filter_status.external_heading_active         = system_state_packet.filter_status.b.external_heading_active;

                    // - States
                    state_msg.unix_time_seconds     = system_state_packet.unix_time_seconds;
                    state_msg.microseconds          = system_state_packet.microseconds;
                    state_msg.latitude              = system_state_packet.latitude;
                    state_msg.longitude             = system_state_packet.longitude;
                    state_msg.height                = system_state_packet.height;
                    state_msg.velocity              = convert<float,3>( system_state_packet.velocity );
                    state_msg.body_acceleration     = convert<float,3>( system_state_packet.body_acceleration );
                    state_msg.g_force               = system_state_packet.g_force;
                    state_msg.orientation           = convert<float,3>( system_state_packet.orientation );
                    state_msg.angular_velocity      = convert<float,3>( system_state_packet.angular_velocity );
                    state_msg.standard_deviation    = convert<float,3>( system_state_packet.standard_deviation );
                    // Publish message
                    state_pub.publish(state_msg);
                    // Release used packets to prevent memory leakage
                    an_packet_free(&an_packet);
                    // We are only using one packet, so break once we get that packet.
                    break;
                }
            }
        }
    ros::spinOnce();
    rate.sleep();
    }
    return 0;
}
