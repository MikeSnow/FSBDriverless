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

class TopicStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.topic = null;
      this.description = null;
      this.group = null;
      this.trigger_ebs = null;
      this.log_level = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('topic')) {
        this.topic = initObj.topic
      }
      else {
        this.topic = '';
      }
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = '';
      }
      if (initObj.hasOwnProperty('group')) {
        this.group = initObj.group
      }
      else {
        this.group = '';
      }
      if (initObj.hasOwnProperty('trigger_ebs')) {
        this.trigger_ebs = initObj.trigger_ebs
      }
      else {
        this.trigger_ebs = false;
      }
      if (initObj.hasOwnProperty('log_level')) {
        this.log_level = initObj.log_level
      }
      else {
        this.log_level = '';
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TopicStatus
    // Serialize message field [topic]
    bufferOffset = _serializer.string(obj.topic, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    // Serialize message field [group]
    bufferOffset = _serializer.string(obj.group, buffer, bufferOffset);
    // Serialize message field [trigger_ebs]
    bufferOffset = _serializer.bool(obj.trigger_ebs, buffer, bufferOffset);
    // Serialize message field [log_level]
    bufferOffset = _serializer.string(obj.log_level, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint16(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TopicStatus
    let len;
    let data = new TopicStatus(null);
    // Deserialize message field [topic]
    data.topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [group]
    data.group = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [trigger_ebs]
    data.trigger_ebs = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [log_level]
    data.log_level = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.topic.length;
    length += object.description.length;
    length += object.group.length;
    length += object.log_level.length;
    return length + 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'eufs_msgs/TopicStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'be690e3e74c29c8629a7a49290c3e118';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new TopicStatus(null);
    if (msg.topic !== undefined) {
      resolved.topic = msg.topic;
    }
    else {
      resolved.topic = ''
    }

    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = ''
    }

    if (msg.group !== undefined) {
      resolved.group = msg.group;
    }
    else {
      resolved.group = ''
    }

    if (msg.trigger_ebs !== undefined) {
      resolved.trigger_ebs = msg.trigger_ebs;
    }
    else {
      resolved.trigger_ebs = false
    }

    if (msg.log_level !== undefined) {
      resolved.log_level = msg.log_level;
    }
    else {
      resolved.log_level = ''
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

// Constants for message
TopicStatus.Constants = {
  OFF: 0,
  PUBLISHING: 1,
  TIMEOUT_EXCEEDED: 2,
}

module.exports = TopicStatus;
