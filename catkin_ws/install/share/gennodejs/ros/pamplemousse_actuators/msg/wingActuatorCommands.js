// Auto-generated. Do not edit!

// (in-package pamplemousse_actuators.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class wingActuatorCommands {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.controlword = null;
      this.target_position = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('controlword')) {
        this.controlword = initObj.controlword
      }
      else {
        this.controlword = 0;
      }
      if (initObj.hasOwnProperty('target_position')) {
        this.target_position = initObj.target_position
      }
      else {
        this.target_position = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type wingActuatorCommands
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [controlword]
    bufferOffset = _serializer.uint16(obj.controlword, buffer, bufferOffset);
    // Serialize message field [target_position]
    bufferOffset = _serializer.int32(obj.target_position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type wingActuatorCommands
    let len;
    let data = new wingActuatorCommands(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [controlword]
    data.controlword = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [target_position]
    data.target_position = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pamplemousse_actuators/wingActuatorCommands';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b1d763f711c35795d466da4ed513c9a2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # wingCommands.msg
    # 
    # This message holds commands for a single wing actuator.
    Header header
    
    # 6040h Controlword
    # This object controls the CiA 402 Power State Machine
    uint16 controlword
    
    # 607Ah Target Position
    # This object specifies the target position in user-defined units for the Profile
    # Position and Cyclic Synchronous modes.
    int32 target_position
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new wingActuatorCommands(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.controlword !== undefined) {
      resolved.controlword = msg.controlword;
    }
    else {
      resolved.controlword = 0
    }

    if (msg.target_position !== undefined) {
      resolved.target_position = msg.target_position;
    }
    else {
      resolved.target_position = 0
    }

    return resolved;
    }
};

module.exports = wingActuatorCommands;
