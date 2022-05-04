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

class WheelSpeeds {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.steering = null;
      this.lf_speed = null;
      this.rf_speed = null;
      this.lb_speed = null;
      this.rb_speed = null;
    }
    else {
      if (initObj.hasOwnProperty('steering')) {
        this.steering = initObj.steering
      }
      else {
        this.steering = 0.0;
      }
      if (initObj.hasOwnProperty('lf_speed')) {
        this.lf_speed = initObj.lf_speed
      }
      else {
        this.lf_speed = 0.0;
      }
      if (initObj.hasOwnProperty('rf_speed')) {
        this.rf_speed = initObj.rf_speed
      }
      else {
        this.rf_speed = 0.0;
      }
      if (initObj.hasOwnProperty('lb_speed')) {
        this.lb_speed = initObj.lb_speed
      }
      else {
        this.lb_speed = 0.0;
      }
      if (initObj.hasOwnProperty('rb_speed')) {
        this.rb_speed = initObj.rb_speed
      }
      else {
        this.rb_speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelSpeeds
    // Serialize message field [steering]
    bufferOffset = _serializer.float32(obj.steering, buffer, bufferOffset);
    // Serialize message field [lf_speed]
    bufferOffset = _serializer.float32(obj.lf_speed, buffer, bufferOffset);
    // Serialize message field [rf_speed]
    bufferOffset = _serializer.float32(obj.rf_speed, buffer, bufferOffset);
    // Serialize message field [lb_speed]
    bufferOffset = _serializer.float32(obj.lb_speed, buffer, bufferOffset);
    // Serialize message field [rb_speed]
    bufferOffset = _serializer.float32(obj.rb_speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelSpeeds
    let len;
    let data = new WheelSpeeds(null);
    // Deserialize message field [steering]
    data.steering = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lf_speed]
    data.lf_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rf_speed]
    data.rf_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lb_speed]
    data.lb_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rb_speed]
    data.rb_speed = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'eufs_msgs/WheelSpeeds';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '032f31bfd4ad524fa752e1644fb5e2ab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 steering
    float32 lf_speed
    float32 rf_speed
    float32 lb_speed
    float32 rb_speed
    
    # Steering is in radians
    # Speeds are in RPM
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelSpeeds(null);
    if (msg.steering !== undefined) {
      resolved.steering = msg.steering;
    }
    else {
      resolved.steering = 0.0
    }

    if (msg.lf_speed !== undefined) {
      resolved.lf_speed = msg.lf_speed;
    }
    else {
      resolved.lf_speed = 0.0
    }

    if (msg.rf_speed !== undefined) {
      resolved.rf_speed = msg.rf_speed;
    }
    else {
      resolved.rf_speed = 0.0
    }

    if (msg.lb_speed !== undefined) {
      resolved.lb_speed = msg.lb_speed;
    }
    else {
      resolved.lb_speed = 0.0
    }

    if (msg.rb_speed !== undefined) {
      resolved.rb_speed = msg.rb_speed;
    }
    else {
      resolved.rb_speed = 0.0
    }

    return resolved;
    }
};

module.exports = WheelSpeeds;
