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

class FullState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.x_pos = null;
      this.y_pos = null;
      this.yaw = null;
      this.roll = null;
      this.u_x = null;
      this.u_y = null;
      this.yaw_mder = null;
      this.front_throttle = null;
      this.rear_throttle = null;
      this.steering = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('x_pos')) {
        this.x_pos = initObj.x_pos
      }
      else {
        this.x_pos = 0.0;
      }
      if (initObj.hasOwnProperty('y_pos')) {
        this.y_pos = initObj.y_pos
      }
      else {
        this.y_pos = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('u_x')) {
        this.u_x = initObj.u_x
      }
      else {
        this.u_x = 0.0;
      }
      if (initObj.hasOwnProperty('u_y')) {
        this.u_y = initObj.u_y
      }
      else {
        this.u_y = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_mder')) {
        this.yaw_mder = initObj.yaw_mder
      }
      else {
        this.yaw_mder = 0.0;
      }
      if (initObj.hasOwnProperty('front_throttle')) {
        this.front_throttle = initObj.front_throttle
      }
      else {
        this.front_throttle = 0.0;
      }
      if (initObj.hasOwnProperty('rear_throttle')) {
        this.rear_throttle = initObj.rear_throttle
      }
      else {
        this.rear_throttle = 0.0;
      }
      if (initObj.hasOwnProperty('steering')) {
        this.steering = initObj.steering
      }
      else {
        this.steering = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FullState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [x_pos]
    bufferOffset = _serializer.float64(obj.x_pos, buffer, bufferOffset);
    // Serialize message field [y_pos]
    bufferOffset = _serializer.float64(obj.y_pos, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float64(obj.roll, buffer, bufferOffset);
    // Serialize message field [u_x]
    bufferOffset = _serializer.float64(obj.u_x, buffer, bufferOffset);
    // Serialize message field [u_y]
    bufferOffset = _serializer.float64(obj.u_y, buffer, bufferOffset);
    // Serialize message field [yaw_mder]
    bufferOffset = _serializer.float64(obj.yaw_mder, buffer, bufferOffset);
    // Serialize message field [front_throttle]
    bufferOffset = _serializer.float64(obj.front_throttle, buffer, bufferOffset);
    // Serialize message field [rear_throttle]
    bufferOffset = _serializer.float64(obj.rear_throttle, buffer, bufferOffset);
    // Serialize message field [steering]
    bufferOffset = _serializer.float64(obj.steering, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FullState
    let len;
    let data = new FullState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [x_pos]
    data.x_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_pos]
    data.y_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u_x]
    data.u_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [u_y]
    data.u_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_mder]
    data.yaw_mder = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [front_throttle]
    data.front_throttle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rear_throttle]
    data.rear_throttle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steering]
    data.steering = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'eufs_msgs/FullState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '401dfd30194f0a98ee1ec12310cf6b0f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64 x_pos
    float64 y_pos
    float64 yaw
    float64 roll
    float64 u_x
    float64 u_y
    float64 yaw_mder
    float64 front_throttle
    float64 rear_throttle
    float64 steering
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
    const resolved = new FullState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.x_pos !== undefined) {
      resolved.x_pos = msg.x_pos;
    }
    else {
      resolved.x_pos = 0.0
    }

    if (msg.y_pos !== undefined) {
      resolved.y_pos = msg.y_pos;
    }
    else {
      resolved.y_pos = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.u_x !== undefined) {
      resolved.u_x = msg.u_x;
    }
    else {
      resolved.u_x = 0.0
    }

    if (msg.u_y !== undefined) {
      resolved.u_y = msg.u_y;
    }
    else {
      resolved.u_y = 0.0
    }

    if (msg.yaw_mder !== undefined) {
      resolved.yaw_mder = msg.yaw_mder;
    }
    else {
      resolved.yaw_mder = 0.0
    }

    if (msg.front_throttle !== undefined) {
      resolved.front_throttle = msg.front_throttle;
    }
    else {
      resolved.front_throttle = 0.0
    }

    if (msg.rear_throttle !== undefined) {
      resolved.rear_throttle = msg.rear_throttle;
    }
    else {
      resolved.rear_throttle = 0.0
    }

    if (msg.steering !== undefined) {
      resolved.steering = msg.steering;
    }
    else {
      resolved.steering = 0.0
    }

    return resolved;
    }
};

module.exports = FullState;
