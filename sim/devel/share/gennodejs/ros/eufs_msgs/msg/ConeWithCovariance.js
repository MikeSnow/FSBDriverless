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

class ConeWithCovariance {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.point = null;
      this.covariance = null;
    }
    else {
      if (initObj.hasOwnProperty('point')) {
        this.point = initObj.point
      }
      else {
        this.point = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('covariance')) {
        this.covariance = initObj.covariance
      }
      else {
        this.covariance = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConeWithCovariance
    // Serialize message field [point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.point, buffer, bufferOffset);
    // Check that the constant length array field [covariance] has the right length
    if (obj.covariance.length !== 4) {
      throw new Error('Unable to serialize array field covariance - length must be 4')
    }
    // Serialize message field [covariance]
    bufferOffset = _arraySerializer.float64(obj.covariance, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConeWithCovariance
    let len;
    let data = new ConeWithCovariance(null);
    // Deserialize message field [point]
    data.point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [covariance]
    data.covariance = _arrayDeserializer.float64(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'eufs_msgs/ConeWithCovariance';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bec8795f508b6f8adfedec6fd5758082';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ConeWithCovariance(null);
    if (msg.point !== undefined) {
      resolved.point = geometry_msgs.msg.Point.Resolve(msg.point)
    }
    else {
      resolved.point = new geometry_msgs.msg.Point()
    }

    if (msg.covariance !== undefined) {
      resolved.covariance = msg.covariance;
    }
    else {
      resolved.covariance = new Array(4).fill(0)
    }

    return resolved;
    }
};

module.exports = ConeWithCovariance;
