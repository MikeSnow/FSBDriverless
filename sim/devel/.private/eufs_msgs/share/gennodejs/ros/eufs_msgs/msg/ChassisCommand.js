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

class ChassisCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sender = null;
      this.throttle = null;
      this.steering = null;
      this.front_brake = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('sender')) {
        this.sender = initObj.sender
      }
      else {
        this.sender = '';
      }
      if (initObj.hasOwnProperty('throttle')) {
        this.throttle = initObj.throttle
      }
      else {
        this.throttle = 0.0;
      }
      if (initObj.hasOwnProperty('steering')) {
        this.steering = initObj.steering
      }
      else {
        this.steering = 0.0;
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
    // Serializes a message object of type ChassisCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [sender]
    bufferOffset = _serializer.string(obj.sender, buffer, bufferOffset);
    // Serialize message field [throttle]
    bufferOffset = _serializer.float64(obj.throttle, buffer, bufferOffset);
    // Serialize message field [steering]
    bufferOffset = _serializer.float64(obj.steering, buffer, bufferOffset);
    // Serialize message field [front_brake]
    bufferOffset = _serializer.float64(obj.front_brake, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChassisCommand
    let len;
    let data = new ChassisCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sender]
    data.sender = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [throttle]
    data.throttle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steering]
    data.steering = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [front_brake]
    data.front_brake = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.sender.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'eufs_msgs/ChassisCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '003e7b9af89a02607c6acd00a5b81f03';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    string sender
    float64 throttle
    float64 steering
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
    const resolved = new ChassisCommand(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.sender !== undefined) {
      resolved.sender = msg.sender;
    }
    else {
      resolved.sender = ''
    }

    if (msg.throttle !== undefined) {
      resolved.throttle = msg.throttle;
    }
    else {
      resolved.throttle = 0.0
    }

    if (msg.steering !== undefined) {
      resolved.steering = msg.steering;
    }
    else {
      resolved.steering = 0.0
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

module.exports = ChassisCommand;
