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

class filterStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ins_filter_initialised = null;
      this.heading_initialised = null;
      this.utc_time_initialised = null;
      this.gnss_fix_type = null;
      this.event1_flag = null;
      this.event2_flag = null;
      this.internal_gnss_enabled = null;
      this.magnetic_heading_enabled = null;
      this.velocity_heading_enabled = null;
      this.atmospheric_altitude_enabled = null;
      this.external_position_active = null;
      this.external_velocity_active = null;
      this.external_heading_active = null;
    }
    else {
      if (initObj.hasOwnProperty('ins_filter_initialised')) {
        this.ins_filter_initialised = initObj.ins_filter_initialised
      }
      else {
        this.ins_filter_initialised = 0;
      }
      if (initObj.hasOwnProperty('heading_initialised')) {
        this.heading_initialised = initObj.heading_initialised
      }
      else {
        this.heading_initialised = 0;
      }
      if (initObj.hasOwnProperty('utc_time_initialised')) {
        this.utc_time_initialised = initObj.utc_time_initialised
      }
      else {
        this.utc_time_initialised = 0;
      }
      if (initObj.hasOwnProperty('gnss_fix_type')) {
        this.gnss_fix_type = initObj.gnss_fix_type
      }
      else {
        this.gnss_fix_type = 0;
      }
      if (initObj.hasOwnProperty('event1_flag')) {
        this.event1_flag = initObj.event1_flag
      }
      else {
        this.event1_flag = 0;
      }
      if (initObj.hasOwnProperty('event2_flag')) {
        this.event2_flag = initObj.event2_flag
      }
      else {
        this.event2_flag = 0;
      }
      if (initObj.hasOwnProperty('internal_gnss_enabled')) {
        this.internal_gnss_enabled = initObj.internal_gnss_enabled
      }
      else {
        this.internal_gnss_enabled = 0;
      }
      if (initObj.hasOwnProperty('magnetic_heading_enabled')) {
        this.magnetic_heading_enabled = initObj.magnetic_heading_enabled
      }
      else {
        this.magnetic_heading_enabled = 0;
      }
      if (initObj.hasOwnProperty('velocity_heading_enabled')) {
        this.velocity_heading_enabled = initObj.velocity_heading_enabled
      }
      else {
        this.velocity_heading_enabled = 0;
      }
      if (initObj.hasOwnProperty('atmospheric_altitude_enabled')) {
        this.atmospheric_altitude_enabled = initObj.atmospheric_altitude_enabled
      }
      else {
        this.atmospheric_altitude_enabled = 0;
      }
      if (initObj.hasOwnProperty('external_position_active')) {
        this.external_position_active = initObj.external_position_active
      }
      else {
        this.external_position_active = 0;
      }
      if (initObj.hasOwnProperty('external_velocity_active')) {
        this.external_velocity_active = initObj.external_velocity_active
      }
      else {
        this.external_velocity_active = 0;
      }
      if (initObj.hasOwnProperty('external_heading_active')) {
        this.external_heading_active = initObj.external_heading_active
      }
      else {
        this.external_heading_active = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type filterStatus
    // Serialize message field [ins_filter_initialised]
    bufferOffset = _serializer.uint8(obj.ins_filter_initialised, buffer, bufferOffset);
    // Serialize message field [heading_initialised]
    bufferOffset = _serializer.uint8(obj.heading_initialised, buffer, bufferOffset);
    // Serialize message field [utc_time_initialised]
    bufferOffset = _serializer.uint8(obj.utc_time_initialised, buffer, bufferOffset);
    // Serialize message field [gnss_fix_type]
    bufferOffset = _serializer.uint8(obj.gnss_fix_type, buffer, bufferOffset);
    // Serialize message field [event1_flag]
    bufferOffset = _serializer.uint8(obj.event1_flag, buffer, bufferOffset);
    // Serialize message field [event2_flag]
    bufferOffset = _serializer.uint8(obj.event2_flag, buffer, bufferOffset);
    // Serialize message field [internal_gnss_enabled]
    bufferOffset = _serializer.uint8(obj.internal_gnss_enabled, buffer, bufferOffset);
    // Serialize message field [magnetic_heading_enabled]
    bufferOffset = _serializer.uint8(obj.magnetic_heading_enabled, buffer, bufferOffset);
    // Serialize message field [velocity_heading_enabled]
    bufferOffset = _serializer.uint8(obj.velocity_heading_enabled, buffer, bufferOffset);
    // Serialize message field [atmospheric_altitude_enabled]
    bufferOffset = _serializer.uint8(obj.atmospheric_altitude_enabled, buffer, bufferOffset);
    // Serialize message field [external_position_active]
    bufferOffset = _serializer.uint8(obj.external_position_active, buffer, bufferOffset);
    // Serialize message field [external_velocity_active]
    bufferOffset = _serializer.uint8(obj.external_velocity_active, buffer, bufferOffset);
    // Serialize message field [external_heading_active]
    bufferOffset = _serializer.uint8(obj.external_heading_active, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type filterStatus
    let len;
    let data = new filterStatus(null);
    // Deserialize message field [ins_filter_initialised]
    data.ins_filter_initialised = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [heading_initialised]
    data.heading_initialised = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [utc_time_initialised]
    data.utc_time_initialised = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gnss_fix_type]
    data.gnss_fix_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [event1_flag]
    data.event1_flag = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [event2_flag]
    data.event2_flag = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [internal_gnss_enabled]
    data.internal_gnss_enabled = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [magnetic_heading_enabled]
    data.magnetic_heading_enabled = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [velocity_heading_enabled]
    data.velocity_heading_enabled = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [atmospheric_altitude_enabled]
    data.atmospheric_altitude_enabled = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [external_position_active]
    data.external_position_active = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [external_velocity_active]
    data.external_velocity_active = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [external_heading_active]
    data.external_heading_active = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pamplemousse_sensors/filterStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6802282c725c35556f638fa802316676';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new filterStatus(null);
    if (msg.ins_filter_initialised !== undefined) {
      resolved.ins_filter_initialised = msg.ins_filter_initialised;
    }
    else {
      resolved.ins_filter_initialised = 0
    }

    if (msg.heading_initialised !== undefined) {
      resolved.heading_initialised = msg.heading_initialised;
    }
    else {
      resolved.heading_initialised = 0
    }

    if (msg.utc_time_initialised !== undefined) {
      resolved.utc_time_initialised = msg.utc_time_initialised;
    }
    else {
      resolved.utc_time_initialised = 0
    }

    if (msg.gnss_fix_type !== undefined) {
      resolved.gnss_fix_type = msg.gnss_fix_type;
    }
    else {
      resolved.gnss_fix_type = 0
    }

    if (msg.event1_flag !== undefined) {
      resolved.event1_flag = msg.event1_flag;
    }
    else {
      resolved.event1_flag = 0
    }

    if (msg.event2_flag !== undefined) {
      resolved.event2_flag = msg.event2_flag;
    }
    else {
      resolved.event2_flag = 0
    }

    if (msg.internal_gnss_enabled !== undefined) {
      resolved.internal_gnss_enabled = msg.internal_gnss_enabled;
    }
    else {
      resolved.internal_gnss_enabled = 0
    }

    if (msg.magnetic_heading_enabled !== undefined) {
      resolved.magnetic_heading_enabled = msg.magnetic_heading_enabled;
    }
    else {
      resolved.magnetic_heading_enabled = 0
    }

    if (msg.velocity_heading_enabled !== undefined) {
      resolved.velocity_heading_enabled = msg.velocity_heading_enabled;
    }
    else {
      resolved.velocity_heading_enabled = 0
    }

    if (msg.atmospheric_altitude_enabled !== undefined) {
      resolved.atmospheric_altitude_enabled = msg.atmospheric_altitude_enabled;
    }
    else {
      resolved.atmospheric_altitude_enabled = 0
    }

    if (msg.external_position_active !== undefined) {
      resolved.external_position_active = msg.external_position_active;
    }
    else {
      resolved.external_position_active = 0
    }

    if (msg.external_velocity_active !== undefined) {
      resolved.external_velocity_active = msg.external_velocity_active;
    }
    else {
      resolved.external_velocity_active = 0
    }

    if (msg.external_heading_active !== undefined) {
      resolved.external_heading_active = msg.external_heading_active;
    }
    else {
      resolved.external_heading_active = 0
    }

    return resolved;
    }
};

module.exports = filterStatus;
