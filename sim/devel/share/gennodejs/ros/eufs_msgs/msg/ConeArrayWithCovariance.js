// Auto-generated. Do not edit!

// (in-package eufs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ConeWithCovariance = require('./ConeWithCovariance.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ConeArrayWithCovariance {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.blue_cones = null;
      this.yellow_cones = null;
      this.orange_cones = null;
      this.big_orange_cones = null;
      this.unknown_color_cones = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('blue_cones')) {
        this.blue_cones = initObj.blue_cones
      }
      else {
        this.blue_cones = [];
      }
      if (initObj.hasOwnProperty('yellow_cones')) {
        this.yellow_cones = initObj.yellow_cones
      }
      else {
        this.yellow_cones = [];
      }
      if (initObj.hasOwnProperty('orange_cones')) {
        this.orange_cones = initObj.orange_cones
      }
      else {
        this.orange_cones = [];
      }
      if (initObj.hasOwnProperty('big_orange_cones')) {
        this.big_orange_cones = initObj.big_orange_cones
      }
      else {
        this.big_orange_cones = [];
      }
      if (initObj.hasOwnProperty('unknown_color_cones')) {
        this.unknown_color_cones = initObj.unknown_color_cones
      }
      else {
        this.unknown_color_cones = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConeArrayWithCovariance
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [blue_cones]
    // Serialize the length for message field [blue_cones]
    bufferOffset = _serializer.uint32(obj.blue_cones.length, buffer, bufferOffset);
    obj.blue_cones.forEach((val) => {
      bufferOffset = ConeWithCovariance.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [yellow_cones]
    // Serialize the length for message field [yellow_cones]
    bufferOffset = _serializer.uint32(obj.yellow_cones.length, buffer, bufferOffset);
    obj.yellow_cones.forEach((val) => {
      bufferOffset = ConeWithCovariance.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [orange_cones]
    // Serialize the length for message field [orange_cones]
    bufferOffset = _serializer.uint32(obj.orange_cones.length, buffer, bufferOffset);
    obj.orange_cones.forEach((val) => {
      bufferOffset = ConeWithCovariance.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [big_orange_cones]
    // Serialize the length for message field [big_orange_cones]
    bufferOffset = _serializer.uint32(obj.big_orange_cones.length, buffer, bufferOffset);
    obj.big_orange_cones.forEach((val) => {
      bufferOffset = ConeWithCovariance.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [unknown_color_cones]
    // Serialize the length for message field [unknown_color_cones]
    bufferOffset = _serializer.uint32(obj.unknown_color_cones.length, buffer, bufferOffset);
    obj.unknown_color_cones.forEach((val) => {
      bufferOffset = ConeWithCovariance.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConeArrayWithCovariance
    let len;
    let data = new ConeArrayWithCovariance(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [blue_cones]
    // Deserialize array length for message field [blue_cones]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.blue_cones = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.blue_cones[i] = ConeWithCovariance.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [yellow_cones]
    // Deserialize array length for message field [yellow_cones]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.yellow_cones = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.yellow_cones[i] = ConeWithCovariance.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [orange_cones]
    // Deserialize array length for message field [orange_cones]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.orange_cones = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.orange_cones[i] = ConeWithCovariance.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [big_orange_cones]
    // Deserialize array length for message field [big_orange_cones]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.big_orange_cones = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.big_orange_cones[i] = ConeWithCovariance.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [unknown_color_cones]
    // Deserialize array length for message field [unknown_color_cones]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.unknown_color_cones = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.unknown_color_cones[i] = ConeWithCovariance.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 56 * object.blue_cones.length;
    length += 56 * object.yellow_cones.length;
    length += 56 * object.orange_cones.length;
    length += 56 * object.big_orange_cones.length;
    length += 56 * object.unknown_color_cones.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'eufs_msgs/ConeArrayWithCovariance';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e5f10da6162fc97ab08945c47837cb2d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Array of 2D cone locations (z = 0) with covariances
    
    Header header
    
    ConeWithCovariance[] blue_cones
    ConeWithCovariance[] yellow_cones
    ConeWithCovariance[] orange_cones
    ConeWithCovariance[] big_orange_cones
    ConeWithCovariance[] unknown_color_cones
    
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
    MSG: eufs_msgs/ConeWithCovariance
    # Cone information
    
    geometry_msgs/Point point
    float64[4] covariance
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConeArrayWithCovariance(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.blue_cones !== undefined) {
      resolved.blue_cones = new Array(msg.blue_cones.length);
      for (let i = 0; i < resolved.blue_cones.length; ++i) {
        resolved.blue_cones[i] = ConeWithCovariance.Resolve(msg.blue_cones[i]);
      }
    }
    else {
      resolved.blue_cones = []
    }

    if (msg.yellow_cones !== undefined) {
      resolved.yellow_cones = new Array(msg.yellow_cones.length);
      for (let i = 0; i < resolved.yellow_cones.length; ++i) {
        resolved.yellow_cones[i] = ConeWithCovariance.Resolve(msg.yellow_cones[i]);
      }
    }
    else {
      resolved.yellow_cones = []
    }

    if (msg.orange_cones !== undefined) {
      resolved.orange_cones = new Array(msg.orange_cones.length);
      for (let i = 0; i < resolved.orange_cones.length; ++i) {
        resolved.orange_cones[i] = ConeWithCovariance.Resolve(msg.orange_cones[i]);
      }
    }
    else {
      resolved.orange_cones = []
    }

    if (msg.big_orange_cones !== undefined) {
      resolved.big_orange_cones = new Array(msg.big_orange_cones.length);
      for (let i = 0; i < resolved.big_orange_cones.length; ++i) {
        resolved.big_orange_cones[i] = ConeWithCovariance.Resolve(msg.big_orange_cones[i]);
      }
    }
    else {
      resolved.big_orange_cones = []
    }

    if (msg.unknown_color_cones !== undefined) {
      resolved.unknown_color_cones = new Array(msg.unknown_color_cones.length);
      for (let i = 0; i < resolved.unknown_color_cones.length; ++i) {
        resolved.unknown_color_cones[i] = ConeWithCovariance.Resolve(msg.unknown_color_cones[i]);
      }
    }
    else {
      resolved.unknown_color_cones = []
    }

    return resolved;
    }
};

module.exports = ConeArrayWithCovariance;
