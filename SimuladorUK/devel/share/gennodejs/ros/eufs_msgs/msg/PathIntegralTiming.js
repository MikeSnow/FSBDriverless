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

class PathIntegralTiming {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.average_time_between_poses = null;
      this.average_optimization_cycle_time = null;
      this.average_sleep_time = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('average_time_between_poses')) {
        this.average_time_between_poses = initObj.average_time_between_poses
      }
      else {
        this.average_time_between_poses = 0.0;
      }
      if (initObj.hasOwnProperty('average_optimization_cycle_time')) {
        this.average_optimization_cycle_time = initObj.average_optimization_cycle_time
      }
      else {
        this.average_optimization_cycle_time = 0.0;
      }
      if (initObj.hasOwnProperty('average_sleep_time')) {
        this.average_sleep_time = initObj.average_sleep_time
      }
      else {
        this.average_sleep_time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathIntegralTiming
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [average_time_between_poses]
    bufferOffset = _serializer.float64(obj.average_time_between_poses, buffer, bufferOffset);
    // Serialize message field [average_optimization_cycle_time]
    bufferOffset = _serializer.float64(obj.average_optimization_cycle_time, buffer, bufferOffset);
    // Serialize message field [average_sleep_time]
    bufferOffset = _serializer.float64(obj.average_sleep_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathIntegralTiming
    let len;
    let data = new PathIntegralTiming(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [average_time_between_poses]
    data.average_time_between_poses = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [average_optimization_cycle_time]
    data.average_optimization_cycle_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [average_sleep_time]
    data.average_sleep_time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'eufs_msgs/PathIntegralTiming';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'da8d85f1b7925638bce827c1d42eeb1b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64 average_time_between_poses
    float64 average_optimization_cycle_time
    float64 average_sleep_time
    
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
    const resolved = new PathIntegralTiming(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.average_time_between_poses !== undefined) {
      resolved.average_time_between_poses = msg.average_time_between_poses;
    }
    else {
      resolved.average_time_between_poses = 0.0
    }

    if (msg.average_optimization_cycle_time !== undefined) {
      resolved.average_optimization_cycle_time = msg.average_optimization_cycle_time;
    }
    else {
      resolved.average_optimization_cycle_time = 0.0
    }

    if (msg.average_sleep_time !== undefined) {
      resolved.average_sleep_time = msg.average_sleep_time;
    }
    else {
      resolved.average_sleep_time = 0.0
    }

    return resolved;
    }
};

module.exports = PathIntegralTiming;
