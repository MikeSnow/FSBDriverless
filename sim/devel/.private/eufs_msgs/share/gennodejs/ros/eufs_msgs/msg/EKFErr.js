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

class EKFErr {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.gps_x_vel_err = null;
      this.gps_y_vel_err = null;
      this.imu_x_acc_err = null;
      this.imu_y_acc_err = null;
      this.imu_yaw_err = null;
      this.ekf_x_vel_var = null;
      this.ekf_y_vel_var = null;
      this.ekf_x_acc_var = null;
      this.ekf_y_acc_var = null;
      this.ekf_yaw_var = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('gps_x_vel_err')) {
        this.gps_x_vel_err = initObj.gps_x_vel_err
      }
      else {
        this.gps_x_vel_err = 0.0;
      }
      if (initObj.hasOwnProperty('gps_y_vel_err')) {
        this.gps_y_vel_err = initObj.gps_y_vel_err
      }
      else {
        this.gps_y_vel_err = 0.0;
      }
      if (initObj.hasOwnProperty('imu_x_acc_err')) {
        this.imu_x_acc_err = initObj.imu_x_acc_err
      }
      else {
        this.imu_x_acc_err = 0.0;
      }
      if (initObj.hasOwnProperty('imu_y_acc_err')) {
        this.imu_y_acc_err = initObj.imu_y_acc_err
      }
      else {
        this.imu_y_acc_err = 0.0;
      }
      if (initObj.hasOwnProperty('imu_yaw_err')) {
        this.imu_yaw_err = initObj.imu_yaw_err
      }
      else {
        this.imu_yaw_err = 0.0;
      }
      if (initObj.hasOwnProperty('ekf_x_vel_var')) {
        this.ekf_x_vel_var = initObj.ekf_x_vel_var
      }
      else {
        this.ekf_x_vel_var = 0.0;
      }
      if (initObj.hasOwnProperty('ekf_y_vel_var')) {
        this.ekf_y_vel_var = initObj.ekf_y_vel_var
      }
      else {
        this.ekf_y_vel_var = 0.0;
      }
      if (initObj.hasOwnProperty('ekf_x_acc_var')) {
        this.ekf_x_acc_var = initObj.ekf_x_acc_var
      }
      else {
        this.ekf_x_acc_var = 0.0;
      }
      if (initObj.hasOwnProperty('ekf_y_acc_var')) {
        this.ekf_y_acc_var = initObj.ekf_y_acc_var
      }
      else {
        this.ekf_y_acc_var = 0.0;
      }
      if (initObj.hasOwnProperty('ekf_yaw_var')) {
        this.ekf_yaw_var = initObj.ekf_yaw_var
      }
      else {
        this.ekf_yaw_var = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EKFErr
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [gps_x_vel_err]
    bufferOffset = _serializer.float64(obj.gps_x_vel_err, buffer, bufferOffset);
    // Serialize message field [gps_y_vel_err]
    bufferOffset = _serializer.float64(obj.gps_y_vel_err, buffer, bufferOffset);
    // Serialize message field [imu_x_acc_err]
    bufferOffset = _serializer.float64(obj.imu_x_acc_err, buffer, bufferOffset);
    // Serialize message field [imu_y_acc_err]
    bufferOffset = _serializer.float64(obj.imu_y_acc_err, buffer, bufferOffset);
    // Serialize message field [imu_yaw_err]
    bufferOffset = _serializer.float64(obj.imu_yaw_err, buffer, bufferOffset);
    // Serialize message field [ekf_x_vel_var]
    bufferOffset = _serializer.float64(obj.ekf_x_vel_var, buffer, bufferOffset);
    // Serialize message field [ekf_y_vel_var]
    bufferOffset = _serializer.float64(obj.ekf_y_vel_var, buffer, bufferOffset);
    // Serialize message field [ekf_x_acc_var]
    bufferOffset = _serializer.float64(obj.ekf_x_acc_var, buffer, bufferOffset);
    // Serialize message field [ekf_y_acc_var]
    bufferOffset = _serializer.float64(obj.ekf_y_acc_var, buffer, bufferOffset);
    // Serialize message field [ekf_yaw_var]
    bufferOffset = _serializer.float64(obj.ekf_yaw_var, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EKFErr
    let len;
    let data = new EKFErr(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [gps_x_vel_err]
    data.gps_x_vel_err = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gps_y_vel_err]
    data.gps_y_vel_err = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_x_acc_err]
    data.imu_x_acc_err = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_y_acc_err]
    data.imu_y_acc_err = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_yaw_err]
    data.imu_yaw_err = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ekf_x_vel_var]
    data.ekf_x_vel_var = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ekf_y_vel_var]
    data.ekf_y_vel_var = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ekf_x_acc_var]
    data.ekf_x_acc_var = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ekf_y_acc_var]
    data.ekf_y_acc_var = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ekf_yaw_var]
    data.ekf_yaw_var = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'eufs_msgs/EKFErr';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '183f1bb90ac72a6c9c108dee51aba1c8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message for the error of the EKF. All of them are based on euclidean distances.
    Header header
    
    float64 gps_x_vel_err
    float64 gps_y_vel_err
    float64 imu_x_acc_err
    float64 imu_y_acc_err
    float64 imu_yaw_err
    float64 ekf_x_vel_var
    float64 ekf_y_vel_var
    float64 ekf_x_acc_var
    float64 ekf_y_acc_var
    float64 ekf_yaw_var
    
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
    const resolved = new EKFErr(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.gps_x_vel_err !== undefined) {
      resolved.gps_x_vel_err = msg.gps_x_vel_err;
    }
    else {
      resolved.gps_x_vel_err = 0.0
    }

    if (msg.gps_y_vel_err !== undefined) {
      resolved.gps_y_vel_err = msg.gps_y_vel_err;
    }
    else {
      resolved.gps_y_vel_err = 0.0
    }

    if (msg.imu_x_acc_err !== undefined) {
      resolved.imu_x_acc_err = msg.imu_x_acc_err;
    }
    else {
      resolved.imu_x_acc_err = 0.0
    }

    if (msg.imu_y_acc_err !== undefined) {
      resolved.imu_y_acc_err = msg.imu_y_acc_err;
    }
    else {
      resolved.imu_y_acc_err = 0.0
    }

    if (msg.imu_yaw_err !== undefined) {
      resolved.imu_yaw_err = msg.imu_yaw_err;
    }
    else {
      resolved.imu_yaw_err = 0.0
    }

    if (msg.ekf_x_vel_var !== undefined) {
      resolved.ekf_x_vel_var = msg.ekf_x_vel_var;
    }
    else {
      resolved.ekf_x_vel_var = 0.0
    }

    if (msg.ekf_y_vel_var !== undefined) {
      resolved.ekf_y_vel_var = msg.ekf_y_vel_var;
    }
    else {
      resolved.ekf_y_vel_var = 0.0
    }

    if (msg.ekf_x_acc_var !== undefined) {
      resolved.ekf_x_acc_var = msg.ekf_x_acc_var;
    }
    else {
      resolved.ekf_x_acc_var = 0.0
    }

    if (msg.ekf_y_acc_var !== undefined) {
      resolved.ekf_y_acc_var = msg.ekf_y_acc_var;
    }
    else {
      resolved.ekf_y_acc_var = 0.0
    }

    if (msg.ekf_yaw_var !== undefined) {
      resolved.ekf_yaw_var = msg.ekf_yaw_var;
    }
    else {
      resolved.ekf_yaw_var = 0.0
    }

    return resolved;
    }
};

module.exports = EKFErr;
