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

class wingActuatorStates {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.operating_mode = null;
      this.statusword = null;
      this.actual_position = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('operating_mode')) {
        this.operating_mode = initObj.operating_mode
      }
      else {
        this.operating_mode = 0;
      }
      if (initObj.hasOwnProperty('statusword')) {
        this.statusword = initObj.statusword
      }
      else {
        this.statusword = 0;
      }
      if (initObj.hasOwnProperty('actual_position')) {
        this.actual_position = initObj.actual_position
      }
      else {
        this.actual_position = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type wingActuatorStates
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [operating_mode]
    bufferOffset = _serializer.int8(obj.operating_mode, buffer, bufferOffset);
    // Serialize message field [statusword]
    bufferOffset = _serializer.uint16(obj.statusword, buffer, bufferOffset);
    // Serialize message field [actual_position]
    bufferOffset = _serializer.int32(obj.actual_position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type wingActuatorStates
    let len;
    let data = new wingActuatorStates(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [operating_mode]
    data.operating_mode = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [statusword]
    data.statusword = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [actual_position]
    data.actual_position = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pamplemousse_actuators/wingActuatorStates';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f35dfd3ce2f32fc079e116f9467f3493';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # wingActuatorStates.msg
    # This is a message to hold the state messages for an individual Nanotec Actuator
    #
    # The state is exactly the Statusword (6041h)
    Header header
    
    # 6060h Modes of Operation
    # The desired operating mode is entered in this object.
    int8 operating_mode
    
    # 6041h Statusword
    # This object returns information about the status of the CiA 402 Power State Machine
    uint16 statusword
    
    # 6063h Position Actual Internal Value
    # Contains the current rotary encoder position in increments
    int32 actual_position 
    
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
    const resolved = new wingActuatorStates(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.operating_mode !== undefined) {
      resolved.operating_mode = msg.operating_mode;
    }
    else {
      resolved.operating_mode = 0
    }

    if (msg.statusword !== undefined) {
      resolved.statusword = msg.statusword;
    }
    else {
      resolved.statusword = 0
    }

    if (msg.actual_position !== undefined) {
      resolved.actual_position = msg.actual_position;
    }
    else {
      resolved.actual_position = 0
    }

    return resolved;
    }
};

module.exports = wingActuatorStates;
