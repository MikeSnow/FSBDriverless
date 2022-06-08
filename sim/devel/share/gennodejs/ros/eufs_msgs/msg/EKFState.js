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

class EKFState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gps_received = null;
      this.imu_received = null;
      this.wheel_odom_received = null;
      this.ekf_odom_received = null;
      this.ekf_accel_received = null;
      this.currently_over_covariance_limit = null;
      this.consecutive_turns_over_covariance_limit = null;
      this.recommends_failure = null;
    }
    else {
      if (initObj.hasOwnProperty('gps_received')) {
        this.gps_received = initObj.gps_received
      }
      else {
        this.gps_received = false;
      }
      if (initObj.hasOwnProperty('imu_received')) {
        this.imu_received = initObj.imu_received
      }
      else {
        this.imu_received = false;
      }
      if (initObj.hasOwnProperty('wheel_odom_received')) {
        this.wheel_odom_received = initObj.wheel_odom_received
      }
      else {
        this.wheel_odom_received = false;
      }
      if (initObj.hasOwnProperty('ekf_odom_received')) {
        this.ekf_odom_received = initObj.ekf_odom_received
      }
      else {
        this.ekf_odom_received = false;
      }
      if (initObj.hasOwnProperty('ekf_accel_received')) {
        this.ekf_accel_received = initObj.ekf_accel_received
      }
      else {
        this.ekf_accel_received = false;
      }
      if (initObj.hasOwnProperty('currently_over_covariance_limit')) {
        this.currently_over_covariance_limit = initObj.currently_over_covariance_limit
      }
      else {
        this.currently_over_covariance_limit = false;
      }
      if (initObj.hasOwnProperty('consecutive_turns_over_covariance_limit')) {
        this.consecutive_turns_over_covariance_limit = initObj.consecutive_turns_over_covariance_limit
      }
      else {
        this.consecutive_turns_over_covariance_limit = false;
      }
      if (initObj.hasOwnProperty('recommends_failure')) {
        this.recommends_failure = initObj.recommends_failure
      }
      else {
        this.recommends_failure = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EKFState
    // Serialize message field [gps_received]
    bufferOffset = _serializer.bool(obj.gps_received, buffer, bufferOffset);
    // Serialize message field [imu_received]
    bufferOffset = _serializer.bool(obj.imu_received, buffer, bufferOffset);
    // Serialize message field [wheel_odom_received]
    bufferOffset = _serializer.bool(obj.wheel_odom_received, buffer, bufferOffset);
    // Serialize message field [ekf_odom_received]
    bufferOffset = _serializer.bool(obj.ekf_odom_received, buffer, bufferOffset);
    // Serialize message field [ekf_accel_received]
    bufferOffset = _serializer.bool(obj.ekf_accel_received, buffer, bufferOffset);
    // Serialize message field [currently_over_covariance_limit]
    bufferOffset = _serializer.bool(obj.currently_over_covariance_limit, buffer, bufferOffset);
    // Serialize message field [consecutive_turns_over_covariance_limit]
    bufferOffset = _serializer.bool(obj.consecutive_turns_over_covariance_limit, buffer, bufferOffset);
    // Serialize message field [recommends_failure]
    bufferOffset = _serializer.bool(obj.recommends_failure, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EKFState
    let len;
    let data = new EKFState(null);
    // Deserialize message field [gps_received]
    data.gps_received = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [imu_received]
    data.imu_received = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wheel_odom_received]
    data.wheel_odom_received = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ekf_odom_received]
    data.ekf_odom_received = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ekf_accel_received]
    data.ekf_accel_received = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [currently_over_covariance_limit]
    data.currently_over_covariance_limit = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [consecutive_turns_over_covariance_limit]
    data.consecutive_turns_over_covariance_limit = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [recommends_failure]
    data.recommends_failure = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'eufs_msgs/EKFState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '08d63999f28c68f92f4728fef441c767';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message contains information about the state of the EKF
    # and is meant for use by the state monitor to ensure the EKF
    # isn't failing.
    
    bool gps_received
    bool imu_received
    bool wheel_odom_received
    
    bool ekf_odom_received
    bool ekf_accel_received
    
    bool currently_over_covariance_limit
    bool consecutive_turns_over_covariance_limit
    
    bool recommends_failure
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EKFState(null);
    if (msg.gps_received !== undefined) {
      resolved.gps_received = msg.gps_received;
    }
    else {
      resolved.gps_received = false
    }

    if (msg.imu_received !== undefined) {
      resolved.imu_received = msg.imu_received;
    }
    else {
      resolved.imu_received = false
    }

    if (msg.wheel_odom_received !== undefined) {
      resolved.wheel_odom_received = msg.wheel_odom_received;
    }
    else {
      resolved.wheel_odom_received = false
    }

    if (msg.ekf_odom_received !== undefined) {
      resolved.ekf_odom_received = msg.ekf_odom_received;
    }
    else {
      resolved.ekf_odom_received = false
    }

    if (msg.ekf_accel_received !== undefined) {
      resolved.ekf_accel_received = msg.ekf_accel_received;
    }
    else {
      resolved.ekf_accel_received = false
    }

    if (msg.currently_over_covariance_limit !== undefined) {
      resolved.currently_over_covariance_limit = msg.currently_over_covariance_limit;
    }
    else {
      resolved.currently_over_covariance_limit = false
    }

    if (msg.consecutive_turns_over_covariance_limit !== undefined) {
      resolved.consecutive_turns_over_covariance_limit = msg.consecutive_turns_over_covariance_limit;
    }
    else {
      resolved.consecutive_turns_over_covariance_limit = false
    }

    if (msg.recommends_failure !== undefined) {
      resolved.recommends_failure = msg.recommends_failure;
    }
    else {
      resolved.recommends_failure = false
    }

    return resolved;
    }
};

module.exports = EKFState;
