// Auto-generated. Do not edit!

// (in-package eufs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ChassisState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.throttle_relay_enabled = null;
      this.autonomous_enabled = null;
      this.runstop_motion_enabled = null;
      this.steering_commander = null;
      this.steering = null;
      this.throttle_commander = null;
      this.throttle = null;
      this.front_brake_commander = null;
      this.front_brake = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('throttle_relay_enabled')) {
        this.throttle_relay_enabled = initObj.throttle_relay_enabled
      }
      else {
        this.throttle_relay_enabled = false;
      }
      if (initObj.hasOwnProperty('autonomous_enabled')) {
        this.autonomous_enabled = initObj.autonomous_enabled
      }
      else {
        this.autonomous_enabled = false;
      }
      if (initObj.hasOwnProperty('runstop_motion_enabled')) {
        this.runstop_motion_enabled = initObj.runstop_motion_enabled
      }
      else {
        this.runstop_motion_enabled = false;
      }
      if (initObj.hasOwnProperty('steering_commander')) {
        this.steering_commander = initObj.steering_commander
      }
      else {
        this.steering_commander = '';
      }
      if (initObj.hasOwnProperty('steering')) {
        this.steering = initObj.steering
      }
      else {
        this.steering = 0.0;
      }
      if (initObj.hasOwnProperty('throttle_commander')) {
        this.throttle_commander = initObj.throttle_commander
      }
      else {
        this.throttle_commander = '';
      }
      if (initObj.hasOwnProperty('throttle')) {
        this.throttle = initObj.throttle
      }
      else {
        this.throttle = 0.0;
      }
      if (initObj.hasOwnProperty('front_brake_commander')) {
        this.front_brake_commander = initObj.front_brake_commander
      }
      else {
        this.front_brake_commander = '';
      }
      if (initObj.hasOwnProperty('front_brake')) {
        this.front_brake = initObj.front_brake
      }
      else {
        this.front_brake = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChassisState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [throttle_relay_enabled]
    bufferOffset = _serializer.bool(obj.throttle_relay_enabled, buffer, bufferOffset);
    // Serialize message field [autonomous_enabled]
    bufferOffset = _serializer.bool(obj.autonomous_enabled, buffer, bufferOffset);
    // Serialize message field [runstop_motion_enabled]
    bufferOffset = _serializer.bool(obj.runstop_motion_enabled, buffer, bufferOffset);
    // Serialize message field [steering_commander]
    bufferOffset = _serializer.string(obj.steering_commander, buffer, bufferOffset);
    // Serialize message field [steering]
    bufferOffset = _serializer.float64(obj.steering, buffer, bufferOffset);
    // Serialize message field [throttle_commander]
    bufferOffset = _serializer.string(obj.throttle_commander, buffer, bufferOffset);
    // Serialize message field [throttle]
    bufferOffset = _serializer.float64(obj.throttle, buffer, bufferOffset);
    // Serialize message field [front_brake_commander]
    bufferOffset = _serializer.string(obj.front_brake_commander, buffer, bufferOffset);
    // Serialize message field [front_brake]
    bufferOffset = _serializer.float64(obj.front_brake, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChassisState
    let len;
    let data = new ChassisState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [throttle_relay_enabled]
    data.throttle_relay_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [autonomous_enabled]
    data.autonomous_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [runstop_motion_enabled]
    data.runstop_motion_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [steering_commander]
    data.steering_commander = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [steering]
    data.steering = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [throttle_commander]
    data.throttle_commander = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [throttle]
    data.throttle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [front_brake_commander]
    data.front_brake_commander = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [front_brake]
    data.front_brake = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.steering_commander.length;
    length += object.throttle_commander.length;
    length += object.front_brake_commander.length;
    return length + 39;
  }

  static datatype() {
    // Returns string type for a message object
    return 'eufs_msgs/ChassisState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '94f504003a2d58582928e8e48a2519db';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    bool throttle_relay_enabled
    bool autonomous_enabled
    bool runstop_motion_enabled
    
    string steering_commander
    float64 steering
    
    string throttle_commander
    float64 throttle
    
    string front_brake_commander
    float64 front_brake
    
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
    const resolved = new ChassisState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.throttle_relay_enabled !== undefined) {
      resolved.throttle_relay_enabled = msg.throttle_relay_enabled;
    }
    else {
      resolved.throttle_relay_enabled = false
    }

    if (msg.autonomous_enabled !== undefined) {
      resolved.autonomous_enabled = msg.autonomous_enabled;
    }
    else {
      resolved.autonomous_enabled = false
    }

    if (msg.runstop_motion_enabled !== undefined) {
      resolved.runstop_motion_enabled = msg.runstop_motion_enabled;
    }
    else {
      resolved.runstop_motion_enabled = false
    }

    if (msg.steering_commander !== undefined) {
      resolved.steering_commander = msg.steering_commander;
    }
    else {
      resolved.steering_commander = ''
    }

    if (msg.steering !== undefined) {
      resolved.steering = msg.steering;
    }
    else {
      resolved.steering = 0.0
    }

    if (msg.throttle_commander !== undefined) {
      resolved.throttle_commander = msg.throttle_commander;
    }
    else {
      resolved.throttle_commander = ''
    }

    if (msg.throttle !== undefined) {
      resolved.throttle = msg.throttle;
    }
    else {
      resolved.throttle = 0.0
    }

    if (msg.front_brake_commander !== undefined) {
      resolved.front_brake_commander = msg.front_brake_commander;
    }
    else {
      resolved.front_brake_commander = ''
    }

    if (msg.front_brake !== undefined) {
      resolved.front_brake = msg.front_brake;
    }
    else {
      resolved.front_brake = 0.0
    }

    return resolved;
    }
};

module.exports = ChassisState;
