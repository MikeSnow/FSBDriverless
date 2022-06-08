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

class SLAMErr {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.x_err = null;
      this.y_err = null;
      this.z_err = null;
      this.x_orient_err = null;
      this.y_orient_err = null;
      this.z_orient_err = null;
      this.w_orient_err = null;
      this.map_similarity = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('x_err')) {
        this.x_err = initObj.x_err
      }
      else {
        this.x_err = 0.0;
      }
      if (initObj.hasOwnProperty('y_err')) {
        this.y_err = initObj.y_err
      }
      else {
        this.y_err = 0.0;
      }
      if (initObj.hasOwnProperty('z_err')) {
        this.z_err = initObj.z_err
      }
      else {
        this.z_err = 0.0;
      }
      if (initObj.hasOwnProperty('x_orient_err')) {
        this.x_orient_err = initObj.x_orient_err
      }
      else {
        this.x_orient_err = 0.0;
      }
      if (initObj.hasOwnProperty('y_orient_err')) {
        this.y_orient_err = initObj.y_orient_err
      }
      else {
        this.y_orient_err = 0.0;
      }
      if (initObj.hasOwnProperty('z_orient_err')) {
        this.z_orient_err = initObj.z_orient_err
      }
      else {
        this.z_orient_err = 0.0;
      }
      if (initObj.hasOwnProperty('w_orient_err')) {
        this.w_orient_err = initObj.w_orient_err
      }
      else {
        this.w_orient_err = 0.0;
      }
      if (initObj.hasOwnProperty('map_similarity')) {
        this.map_similarity = initObj.map_similarity
      }
      else {
        this.map_similarity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SLAMErr
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [x_err]
    bufferOffset = _serializer.float64(obj.x_err, buffer, bufferOffset);
    // Serialize message field [y_err]
    bufferOffset = _serializer.float64(obj.y_err, buffer, bufferOffset);
    // Serialize message field [z_err]
    bufferOffset = _serializer.float64(obj.z_err, buffer, bufferOffset);
    // Serialize message field [x_orient_err]
    bufferOffset = _serializer.float64(obj.x_orient_err, buffer, bufferOffset);
    // Serialize message field [y_orient_err]
    bufferOffset = _serializer.float64(obj.y_orient_err, buffer, bufferOffset);
    // Serialize message field [z_orient_err]
    bufferOffset = _serializer.float64(obj.z_orient_err, buffer, bufferOffset);
    // Serialize message field [w_orient_err]
    bufferOffset = _serializer.float64(obj.w_orient_err, buffer, bufferOffset);
    // Serialize message field [map_similarity]
    bufferOffset = _serializer.float64(obj.map_similarity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SLAMErr
    let len;
    let data = new SLAMErr(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [x_err]
    data.x_err = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_err]
    data.y_err = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_err]
    data.z_err = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x_orient_err]
    data.x_orient_err = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_orient_err]
    data.y_orient_err = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_orient_err]
    data.z_orient_err = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [w_orient_err]
    data.w_orient_err = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [map_similarity]
    data.map_similarity = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'eufs_msgs/SLAMErr';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dc71d228c77971f0462d47d101a48d17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message for the error of our SLAM algorithm. All of them are based on euclidean distances, besides the map similarity,
    # which can be interpreted as a percentage of how well our algorithm describes the map.
    
    Header header
    
    float64 x_err
    float64 y_err
    float64 z_err
    float64 x_orient_err
    float64 y_orient_err
    float64 z_orient_err
    float64 w_orient_err
    float64 map_similarity
    
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
    const resolved = new SLAMErr(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.x_err !== undefined) {
      resolved.x_err = msg.x_err;
    }
    else {
      resolved.x_err = 0.0
    }

    if (msg.y_err !== undefined) {
      resolved.y_err = msg.y_err;
    }
    else {
      resolved.y_err = 0.0
    }

    if (msg.z_err !== undefined) {
      resolved.z_err = msg.z_err;
    }
    else {
      resolved.z_err = 0.0
    }

    if (msg.x_orient_err !== undefined) {
      resolved.x_orient_err = msg.x_orient_err;
    }
    else {
      resolved.x_orient_err = 0.0
    }

    if (msg.y_orient_err !== undefined) {
      resolved.y_orient_err = msg.y_orient_err;
    }
    else {
      resolved.y_orient_err = 0.0
    }

    if (msg.z_orient_err !== undefined) {
      resolved.z_orient_err = msg.z_orient_err;
    }
    else {
      resolved.z_orient_err = 0.0
    }

    if (msg.w_orient_err !== undefined) {
      resolved.w_orient_err = msg.w_orient_err;
    }
    else {
      resolved.w_orient_err = 0.0
    }

    if (msg.map_similarity !== undefined) {
      resolved.map_similarity = msg.map_similarity;
    }
    else {
      resolved.map_similarity = 0.0
    }

    return resolved;
    }
};

module.exports = SLAMErr;
