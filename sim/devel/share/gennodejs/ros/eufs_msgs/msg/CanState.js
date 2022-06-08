// Auto-generated. Do not edit!

// (in-package eufs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CanState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.as_state = null;
      this.ami_state = null;
      this.mission_flag = null;
    }
    else {
      if (initObj.hasOwnProperty('as_state')) {
        this.as_state = initObj.as_state
      }
      else {
        this.as_state = 0;
      }
      if (initObj.hasOwnProperty('ami_state')) {
        this.ami_state = initObj.ami_state
      }
      else {
        this.ami_state = 0;
      }
      if (initObj.hasOwnProperty('mission_flag')) {
        this.mission_flag = initObj.mission_flag
      }
      else {
        this.mission_flag = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CanState
    // Serialize message field [as_state]
    bufferOffset = _serializer.uint16(obj.as_state, buffer, bufferOffset);
    // Serialize message field [ami_state]
    bufferOffset = _serializer.uint16(obj.ami_state, buffer, bufferOffset);
    // Serialize message field [mission_flag]
    bufferOffset = _serializer.bool(obj.mission_flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CanState
    let len;
    let data = new CanState(null);
    // Deserialize message field [as_state]
    data.as_state = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ami_state]
    data.ami_state = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [mission_flag]
    data.mission_flag = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'eufs_msgs/CanState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6932da39aa5099a52c1cabee21cb9e9e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # State of the Autonomous System
    uint16 as_state
    
    uint16 AS_OFF = 0
    uint16 AS_READY = 1
    uint16 AS_DRIVING = 2
    uint16 AS_EMERGENCY_BRAKE = 3
    uint16 AS_FINISHED = 4
    
    # Mission indicator
    uint16 ami_state
    
    uint16 AMI_NOT_SELECTED = 10
    uint16 AMI_ACCELERATION = 11
    uint16 AMI_SKIDPAD = 12
    uint16 AMI_AUTOCROSS = 13
    uint16 AMI_TRACK_DRIVE = 14
    uint16 AMI_AUTONOMOUS_DEMO = 15
    uint16 AMI_ADS_INSPECTION = 16
    uint16 AMI_ADS_EBS = 17
    uint16 AMI_DDT_INSPECTION_A = 18
    uint16 AMI_DDT_INSPECTION_B = 19
    uint16 AMI_MANUAL = 20
    
    # asserted true when mission can be started
    bool mission_flag
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CanState(null);
    if (msg.as_state !== undefined) {
      resolved.as_state = msg.as_state;
    }
    else {
      resolved.as_state = 0
    }

    if (msg.ami_state !== undefined) {
      resolved.ami_state = msg.ami_state;
    }
    else {
      resolved.ami_state = 0
    }

    if (msg.mission_flag !== undefined) {
      resolved.mission_flag = msg.mission_flag;
    }
    else {
      resolved.mission_flag = false
    }

    return resolved;
    }
};

// Constants for message
CanState.Constants = {
  AS_OFF: 0,
  AS_READY: 1,
  AS_DRIVING: 2,
  AS_EMERGENCY_BRAKE: 3,
  AS_FINISHED: 4,
  AMI_NOT_SELECTED: 10,
  AMI_ACCELERATION: 11,
  AMI_SKIDPAD: 12,
  AMI_AUTOCROSS: 13,
  AMI_TRACK_DRIVE: 14,
  AMI_AUTONOMOUS_DEMO: 15,
  AMI_ADS_INSPECTION: 16,
  AMI_ADS_EBS: 17,
  AMI_DDT_INSPECTION_A: 18,
  AMI_DDT_INSPECTION_B: 19,
  AMI_MANUAL: 20,
}

module.exports = CanState;
