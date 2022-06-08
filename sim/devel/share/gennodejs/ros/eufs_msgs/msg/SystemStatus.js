// Auto-generated. Do not edit!

// (in-package eufs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TopicStatus = require('./TopicStatus.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SystemStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.topic_statuses = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('topic_statuses')) {
        this.topic_statuses = initObj.topic_statuses
      }
      else {
        this.topic_statuses = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SystemStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [topic_statuses]
    // Serialize the length for message field [topic_statuses]
    bufferOffset = _serializer.uint32(obj.topic_statuses.length, buffer, bufferOffset);
    obj.topic_statuses.forEach((val) => {
      bufferOffset = TopicStatus.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SystemStatus
    let len;
    let data = new SystemStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [topic_statuses]
    // Deserialize array length for message field [topic_statuses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.topic_statuses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.topic_statuses[i] = TopicStatus.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.topic_statuses.forEach((val) => {
      length += TopicStatus.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'eufs_msgs/SystemStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5a06902117b2ce130952f57a9e31ee19';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    TopicStatus[] topic_statuses
    
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
    MSG: eufs_msgs/TopicStatus
    # Topic information
    string topic
    string description
    string group
    bool trigger_ebs
    string log_level
    
    # Topic status
    uint16 status
    
    uint16 OFF = 0
    uint16 PUBLISHING = 1
    uint16 TIMEOUT_EXCEEDED = 2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SystemStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.topic_statuses !== undefined) {
      resolved.topic_statuses = new Array(msg.topic_statuses.length);
      for (let i = 0; i < resolved.topic_statuses.length; ++i) {
        resolved.topic_statuses[i] = TopicStatus.Resolve(msg.topic_statuses[i]);
      }
    }
    else {
      resolved.topic_statuses = []
    }

    return resolved;
    }
};

module.exports = SystemStatus;
