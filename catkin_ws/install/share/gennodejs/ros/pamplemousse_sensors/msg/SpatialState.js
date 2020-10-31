// Auto-generated. Do not edit!

// (in-package pamplemousse_sensors.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let systemStatus = require('./systemStatus.js');
let filterStatus = require('./filterStatus.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SpatialState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.system_status = null;
      this.filter_status = null;
      this.unix_time_seconds = null;
      this.microseconds = null;
      this.latitude = null;
      this.longitude = null;
      this.height = null;
      this.velocity = null;
      this.body_acceleration = null;
      this.g_force = null;
      this.orientation = null;
      this.angular_velocity = null;
      this.standard_deviation = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('system_status')) {
        this.system_status = initObj.system_status
      }
      else {
        this.system_status = new systemStatus();
      }
      if (initObj.hasOwnProperty('filter_status')) {
        this.filter_status = initObj.filter_status
      }
      else {
        this.filter_status = new filterStatus();
      }
      if (initObj.hasOwnProperty('unix_time_seconds')) {
        this.unix_time_seconds = initObj.unix_time_seconds
      }
      else {
        this.unix_time_seconds = 0;
      }
      if (initObj.hasOwnProperty('microseconds')) {
        this.microseconds = initObj.microseconds
      }
      else {
        this.microseconds = 0;
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('body_acceleration')) {
        this.body_acceleration = initObj.body_acceleration
      }
      else {
        this.body_acceleration = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('g_force')) {
        this.g_force = initObj.g_force
      }
      else {
        this.g_force = 0.0;
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('standard_deviation')) {
        this.standard_deviation = initObj.standard_deviation
      }
      else {
        this.standard_deviation = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpatialState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [system_status]
    bufferOffset = systemStatus.serialize(obj.system_status, buffer, bufferOffset);
    // Serialize message field [filter_status]
    bufferOffset = filterStatus.serialize(obj.filter_status, buffer, bufferOffset);
    // Serialize message field [unix_time_seconds]
    bufferOffset = _serializer.uint32(obj.unix_time_seconds, buffer, bufferOffset);
    // Serialize message field [microseconds]
    bufferOffset = _serializer.uint32(obj.microseconds, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    // Check that the constant length array field [velocity] has the right length
    if (obj.velocity.length !== 3) {
      throw new Error('Unable to serialize array field velocity - length must be 3')
    }
    // Serialize message field [velocity]
    bufferOffset = _arraySerializer.float32(obj.velocity, buffer, bufferOffset, 3);
    // Check that the constant length array field [body_acceleration] has the right length
    if (obj.body_acceleration.length !== 3) {
      throw new Error('Unable to serialize array field body_acceleration - length must be 3')
    }
    // Serialize message field [body_acceleration]
    bufferOffset = _arraySerializer.float32(obj.body_acceleration, buffer, bufferOffset, 3);
    // Serialize message field [g_force]
    bufferOffset = _serializer.float32(obj.g_force, buffer, bufferOffset);
    // Check that the constant length array field [orientation] has the right length
    if (obj.orientation.length !== 3) {
      throw new Error('Unable to serialize array field orientation - length must be 3')
    }
    // Serialize message field [orientation]
    bufferOffset = _arraySerializer.float32(obj.orientation, buffer, bufferOffset, 3);
    // Check that the constant length array field [angular_velocity] has the right length
    if (obj.angular_velocity.length !== 3) {
      throw new Error('Unable to serialize array field angular_velocity - length must be 3')
    }
    // Serialize message field [angular_velocity]
    bufferOffset = _arraySerializer.float32(obj.angular_velocity, buffer, bufferOffset, 3);
    // Check that the constant length array field [standard_deviation] has the right length
    if (obj.standard_deviation.length !== 3) {
      throw new Error('Unable to serialize array field standard_deviation - length must be 3')
    }
    // Serialize message field [standard_deviation]
    bufferOffset = _arraySerializer.float32(obj.standard_deviation, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpatialState
    let len;
    let data = new SpatialState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [system_status]
    data.system_status = systemStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [filter_status]
    data.filter_status = filterStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [unix_time_seconds]
    data.unix_time_seconds = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [microseconds]
    data.microseconds = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [body_acceleration]
    data.body_acceleration = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [g_force]
    data.g_force = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [angular_velocity]
    data.angular_velocity = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [standard_deviation]
    data.standard_deviation = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 125;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pamplemousse_sensors/SpatialState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9da90427e4173bf5bfbba0285b9b9e2e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # SpatialState.msg
    # This is a message to hold the System State Packet from the Advanced Navigation Spatial INS
    #
    # System State Packet
    # Packet ID: 20
    # Length: 100 bytes
    #
    Header header
    
    systemStatus system_status
    filterStatus filter_status
    uint32 unix_time_seconds
    uint32 microseconds
    float64 latitude                # [rad]
    float64 longitude               # [rad]
    float64 height                  # [m]
    float32[3] velocity             # [m/s]
    float32[3] body_acceleration    # [m/s/s]
    float32 g_force                 # [g]
    float32[3] orientation          # [rad]
    float32[3] angular_velocity     # [rad/s]
    float32[3] standard_deviation   # [m]
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: pamplemousse_sensors/systemStatus
    # Defines the System Status subfields for the Spatial INS System State messages
    #
    uint8 system_failure
    uint8 accelerometer_sensor_failure
    uint8 gyroscope_sensor_failure
    uint8 magnetometer_sensor_failure
    uint8 pressure_sensor_failure
    uint8 gnss_failure
    uint8 accelerometer_over_range
    uint8 gyroscope_over_range
    uint8 magnetometer_over_range
    uint8 pressure_over_range
    uint8 minimum_temperature_alarm
    uint8 maximum_temperature_alarm
    uint8 low_voltage_alarm
    uint8 high_voltage_alarm
    uint8 gnss_antenna_disconnected
    uint8 serial_port_overflow_alarm
    ================================================================================
    MSG: pamplemousse_sensors/filterStatus
    # Defines the Filter Status subfields for the Spatial INS System State messagesuint8 orientation_filter_initialised
    #
    uint8 ins_filter_initialised
    uint8 heading_initialised
    uint8 utc_time_initialised
    uint8 gnss_fix_type
    uint8 event1_flag
    uint8 event2_flag
    uint8 internal_gnss_enabled
    uint8 magnetic_heading_enabled
    uint8 velocity_heading_enabled
    uint8 atmospheric_altitude_enabled
    uint8 external_position_active
    uint8 external_velocity_active
    uint8 external_heading_active
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SpatialState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.system_status !== undefined) {
      resolved.system_status = systemStatus.Resolve(msg.system_status)
    }
    else {
      resolved.system_status = new systemStatus()
    }

    if (msg.filter_status !== undefined) {
      resolved.filter_status = filterStatus.Resolve(msg.filter_status)
    }
    else {
      resolved.filter_status = new filterStatus()
    }

    if (msg.unix_time_seconds !== undefined) {
      resolved.unix_time_seconds = msg.unix_time_seconds;
    }
    else {
      resolved.unix_time_seconds = 0
    }

    if (msg.microseconds !== undefined) {
      resolved.microseconds = msg.microseconds;
    }
    else {
      resolved.microseconds = 0
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = new Array(3).fill(0)
    }

    if (msg.body_acceleration !== undefined) {
      resolved.body_acceleration = msg.body_acceleration;
    }
    else {
      resolved.body_acceleration = new Array(3).fill(0)
    }

    if (msg.g_force !== undefined) {
      resolved.g_force = msg.g_force;
    }
    else {
      resolved.g_force = 0.0
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = msg.orientation;
    }
    else {
      resolved.orientation = new Array(3).fill(0)
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = msg.angular_velocity;
    }
    else {
      resolved.angular_velocity = new Array(3).fill(0)
    }

    if (msg.standard_deviation !== undefined) {
      resolved.standard_deviation = msg.standard_deviation;
    }
    else {
      resolved.standard_deviation = new Array(3).fill(0)
    }

    return resolved;
    }
};

module.exports = SpatialState;
