// Auto-generated. Do not edit!

// (in-package pamplemousse_sensors.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class systemStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.system_failure = null;
      this.accelerometer_sensor_failure = null;
      this.gyroscope_sensor_failure = null;
      this.magnetometer_sensor_failure = null;
      this.pressure_sensor_failure = null;
      this.gnss_failure = null;
      this.accelerometer_over_range = null;
      this.gyroscope_over_range = null;
      this.magnetometer_over_range = null;
      this.pressure_over_range = null;
      this.minimum_temperature_alarm = null;
      this.maximum_temperature_alarm = null;
      this.low_voltage_alarm = null;
      this.high_voltage_alarm = null;
      this.gnss_antenna_disconnected = null;
      this.serial_port_overflow_alarm = null;
    }
    else {
      if (initObj.hasOwnProperty('system_failure')) {
        this.system_failure = initObj.system_failure
      }
      else {
        this.system_failure = 0;
      }
      if (initObj.hasOwnProperty('accelerometer_sensor_failure')) {
        this.accelerometer_sensor_failure = initObj.accelerometer_sensor_failure
      }
      else {
        this.accelerometer_sensor_failure = 0;
      }
      if (initObj.hasOwnProperty('gyroscope_sensor_failure')) {
        this.gyroscope_sensor_failure = initObj.gyroscope_sensor_failure
      }
      else {
        this.gyroscope_sensor_failure = 0;
      }
      if (initObj.hasOwnProperty('magnetometer_sensor_failure')) {
        this.magnetometer_sensor_failure = initObj.magnetometer_sensor_failure
      }
      else {
        this.magnetometer_sensor_failure = 0;
      }
      if (initObj.hasOwnProperty('pressure_sensor_failure')) {
        this.pressure_sensor_failure = initObj.pressure_sensor_failure
      }
      else {
        this.pressure_sensor_failure = 0;
      }
      if (initObj.hasOwnProperty('gnss_failure')) {
        this.gnss_failure = initObj.gnss_failure
      }
      else {
        this.gnss_failure = 0;
      }
      if (initObj.hasOwnProperty('accelerometer_over_range')) {
        this.accelerometer_over_range = initObj.accelerometer_over_range
      }
      else {
        this.accelerometer_over_range = 0;
      }
      if (initObj.hasOwnProperty('gyroscope_over_range')) {
        this.gyroscope_over_range = initObj.gyroscope_over_range
      }
      else {
        this.gyroscope_over_range = 0;
      }
      if (initObj.hasOwnProperty('magnetometer_over_range')) {
        this.magnetometer_over_range = initObj.magnetometer_over_range
      }
      else {
        this.magnetometer_over_range = 0;
      }
      if (initObj.hasOwnProperty('pressure_over_range')) {
        this.pressure_over_range = initObj.pressure_over_range
      }
      else {
        this.pressure_over_range = 0;
      }
      if (initObj.hasOwnProperty('minimum_temperature_alarm')) {
        this.minimum_temperature_alarm = initObj.minimum_temperature_alarm
      }
      else {
        this.minimum_temperature_alarm = 0;
      }
      if (initObj.hasOwnProperty('maximum_temperature_alarm')) {
        this.maximum_temperature_alarm = initObj.maximum_temperature_alarm
      }
      else {
        this.maximum_temperature_alarm = 0;
      }
      if (initObj.hasOwnProperty('low_voltage_alarm')) {
        this.low_voltage_alarm = initObj.low_voltage_alarm
      }
      else {
        this.low_voltage_alarm = 0;
      }
      if (initObj.hasOwnProperty('high_voltage_alarm')) {
        this.high_voltage_alarm = initObj.high_voltage_alarm
      }
      else {
        this.high_voltage_alarm = 0;
      }
      if (initObj.hasOwnProperty('gnss_antenna_disconnected')) {
        this.gnss_antenna_disconnected = initObj.gnss_antenna_disconnected
      }
      else {
        this.gnss_antenna_disconnected = 0;
      }
      if (initObj.hasOwnProperty('serial_port_overflow_alarm')) {
        this.serial_port_overflow_alarm = initObj.serial_port_overflow_alarm
      }
      else {
        this.serial_port_overflow_alarm = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type systemStatus
    // Serialize message field [system_failure]
    bufferOffset = _serializer.uint8(obj.system_failure, buffer, bufferOffset);
    // Serialize message field [accelerometer_sensor_failure]
    bufferOffset = _serializer.uint8(obj.accelerometer_sensor_failure, buffer, bufferOffset);
    // Serialize message field [gyroscope_sensor_failure]
    bufferOffset = _serializer.uint8(obj.gyroscope_sensor_failure, buffer, bufferOffset);
    // Serialize message field [magnetometer_sensor_failure]
    bufferOffset = _serializer.uint8(obj.magnetometer_sensor_failure, buffer, bufferOffset);
    // Serialize message field [pressure_sensor_failure]
    bufferOffset = _serializer.uint8(obj.pressure_sensor_failure, buffer, bufferOffset);
    // Serialize message field [gnss_failure]
    bufferOffset = _serializer.uint8(obj.gnss_failure, buffer, bufferOffset);
    // Serialize message field [accelerometer_over_range]
    bufferOffset = _serializer.uint8(obj.accelerometer_over_range, buffer, bufferOffset);
    // Serialize message field [gyroscope_over_range]
    bufferOffset = _serializer.uint8(obj.gyroscope_over_range, buffer, bufferOffset);
    // Serialize message field [magnetometer_over_range]
    bufferOffset = _serializer.uint8(obj.magnetometer_over_range, buffer, bufferOffset);
    // Serialize message field [pressure_over_range]
    bufferOffset = _serializer.uint8(obj.pressure_over_range, buffer, bufferOffset);
    // Serialize message field [minimum_temperature_alarm]
    bufferOffset = _serializer.uint8(obj.minimum_temperature_alarm, buffer, bufferOffset);
    // Serialize message field [maximum_temperature_alarm]
    bufferOffset = _serializer.uint8(obj.maximum_temperature_alarm, buffer, bufferOffset);
    // Serialize message field [low_voltage_alarm]
    bufferOffset = _serializer.uint8(obj.low_voltage_alarm, buffer, bufferOffset);
    // Serialize message field [high_voltage_alarm]
    bufferOffset = _serializer.uint8(obj.high_voltage_alarm, buffer, bufferOffset);
    // Serialize message field [gnss_antenna_disconnected]
    bufferOffset = _serializer.uint8(obj.gnss_antenna_disconnected, buffer, bufferOffset);
    // Serialize message field [serial_port_overflow_alarm]
    bufferOffset = _serializer.uint8(obj.serial_port_overflow_alarm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type systemStatus
    let len;
    let data = new systemStatus(null);
    // Deserialize message field [system_failure]
    data.system_failure = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [accelerometer_sensor_failure]
    data.accelerometer_sensor_failure = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gyroscope_sensor_failure]
    data.gyroscope_sensor_failure = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [magnetometer_sensor_failure]
    data.magnetometer_sensor_failure = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pressure_sensor_failure]
    data.pressure_sensor_failure = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gnss_failure]
    data.gnss_failure = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [accelerometer_over_range]
    data.accelerometer_over_range = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gyroscope_over_range]
    data.gyroscope_over_range = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [magnetometer_over_range]
    data.magnetometer_over_range = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pressure_over_range]
    data.pressure_over_range = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [minimum_temperature_alarm]
    data.minimum_temperature_alarm = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [maximum_temperature_alarm]
    data.maximum_temperature_alarm = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [low_voltage_alarm]
    data.low_voltage_alarm = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [high_voltage_alarm]
    data.high_voltage_alarm = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gnss_antenna_disconnected]
    data.gnss_antenna_disconnected = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [serial_port_overflow_alarm]
    data.serial_port_overflow_alarm = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pamplemousse_sensors/systemStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff88f32a9d7643d1bcd0f5f56a25b1ec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new systemStatus(null);
    if (msg.system_failure !== undefined) {
      resolved.system_failure = msg.system_failure;
    }
    else {
      resolved.system_failure = 0
    }

    if (msg.accelerometer_sensor_failure !== undefined) {
      resolved.accelerometer_sensor_failure = msg.accelerometer_sensor_failure;
    }
    else {
      resolved.accelerometer_sensor_failure = 0
    }

    if (msg.gyroscope_sensor_failure !== undefined) {
      resolved.gyroscope_sensor_failure = msg.gyroscope_sensor_failure;
    }
    else {
      resolved.gyroscope_sensor_failure = 0
    }

    if (msg.magnetometer_sensor_failure !== undefined) {
      resolved.magnetometer_sensor_failure = msg.magnetometer_sensor_failure;
    }
    else {
      resolved.magnetometer_sensor_failure = 0
    }

    if (msg.pressure_sensor_failure !== undefined) {
      resolved.pressure_sensor_failure = msg.pressure_sensor_failure;
    }
    else {
      resolved.pressure_sensor_failure = 0
    }

    if (msg.gnss_failure !== undefined) {
      resolved.gnss_failure = msg.gnss_failure;
    }
    else {
      resolved.gnss_failure = 0
    }

    if (msg.accelerometer_over_range !== undefined) {
      resolved.accelerometer_over_range = msg.accelerometer_over_range;
    }
    else {
      resolved.accelerometer_over_range = 0
    }

    if (msg.gyroscope_over_range !== undefined) {
      resolved.gyroscope_over_range = msg.gyroscope_over_range;
    }
    else {
      resolved.gyroscope_over_range = 0
    }

    if (msg.magnetometer_over_range !== undefined) {
      resolved.magnetometer_over_range = msg.magnetometer_over_range;
    }
    else {
      resolved.magnetometer_over_range = 0
    }

    if (msg.pressure_over_range !== undefined) {
      resolved.pressure_over_range = msg.pressure_over_range;
    }
    else {
      resolved.pressure_over_range = 0
    }

    if (msg.minimum_temperature_alarm !== undefined) {
      resolved.minimum_temperature_alarm = msg.minimum_temperature_alarm;
    }
    else {
      resolved.minimum_temperature_alarm = 0
    }

    if (msg.maximum_temperature_alarm !== undefined) {
      resolved.maximum_temperature_alarm = msg.maximum_temperature_alarm;
    }
    else {
      resolved.maximum_temperature_alarm = 0
    }

    if (msg.low_voltage_alarm !== undefined) {
      resolved.low_voltage_alarm = msg.low_voltage_alarm;
    }
    else {
      resolved.low_voltage_alarm = 0
    }

    if (msg.high_voltage_alarm !== undefined) {
      resolved.high_voltage_alarm = msg.high_voltage_alarm;
    }
    else {
      resolved.high_voltage_alarm = 0
    }

    if (msg.gnss_antenna_disconnected !== undefined) {
      resolved.gnss_antenna_disconnected = msg.gnss_antenna_disconnected;
    }
    else {
      resolved.gnss_antenna_disconnected = 0
    }

    if (msg.serial_port_overflow_alarm !== undefined) {
      resolved.serial_port_overflow_alarm = msg.serial_port_overflow_alarm;
    }
    else {
      resolved.serial_port_overflow_alarm = 0
    }

    return resolved;
    }
};

module.exports = systemStatus;
