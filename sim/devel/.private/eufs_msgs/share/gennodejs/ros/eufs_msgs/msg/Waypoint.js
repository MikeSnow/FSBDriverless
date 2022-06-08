// Auto-generated. Do not edit!

// (in-package eufs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Waypoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.speed = null;
      this.suggested_steering = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('suggested_steering')) {
        this.suggested_steering = initObj.suggested_steering
      }
      else {
        this.suggested_steering = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Waypoint
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float64(obj.speed, buffer, bufferOffset);
    // Serialize message field [suggested_steering]
    bufferOffset = _serializer.float64(obj.suggested_steering, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Waypoint
    let len;
    let data = new Waypoint(null);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [suggested_steering]
    data.suggested_steering = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'eufs_msgs/Waypoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b676a37b14a640e08175196f0fdd0067';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Waypoint position
    geometry_msgs/Point position
    
    # Suggested forward velocity (x direction in car frame)
    float64 speed # m/s
    
    # Suggested steering angle
    float64 suggested_steering # rad
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
    const resolved = new Waypoint(null);
    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.suggested_steering !== undefined) {
      resolved.suggested_steering = msg.suggested_steering;
    }
    else {
      resolved.suggested_steering = 0.0
    }

    return resolved;
    }
};

module.exports = Waypoint;
