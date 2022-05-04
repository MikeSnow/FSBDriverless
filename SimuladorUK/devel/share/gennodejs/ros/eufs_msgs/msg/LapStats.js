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

class LapStats {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.lap_number = null;
      this.lap_time = null;
      this.avg_speed = null;
      this.max_speed = null;
      this.max_slip = null;
      this.max_lateral_accel = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('lap_number')) {
        this.lap_number = initObj.lap_number
      }
      else {
        this.lap_number = 0;
      }
      if (initObj.hasOwnProperty('lap_time')) {
        this.lap_time = initObj.lap_time
      }
      else {
        this.lap_time = 0.0;
      }
      if (initObj.hasOwnProperty('avg_speed')) {
        this.avg_speed = initObj.avg_speed
      }
      else {
        this.avg_speed = 0.0;
      }
      if (initObj.hasOwnProperty('max_speed')) {
        this.max_speed = initObj.max_speed
      }
      else {
        this.max_speed = 0.0;
      }
      if (initObj.hasOwnProperty('max_slip')) {
        this.max_slip = initObj.max_slip
      }
      else {
        this.max_slip = 0.0;
      }
      if (initObj.hasOwnProperty('max_lateral_accel')) {
        this.max_lateral_accel = initObj.max_lateral_accel
      }
      else {
        this.max_lateral_accel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LapStats
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [lap_number]
    bufferOffset = _serializer.int64(obj.lap_number, buffer, bufferOffset);
    // Serialize message field [lap_time]
    bufferOffset = _serializer.float64(obj.lap_time, buffer, bufferOffset);
    // Serialize message field [avg_speed]
    bufferOffset = _serializer.float64(obj.avg_speed, buffer, bufferOffset);
    // Serialize message field [max_speed]
    bufferOffset = _serializer.float64(obj.max_speed, buffer, bufferOffset);
    // Serialize message field [max_slip]
    bufferOffset = _serializer.float64(obj.max_slip, buffer, bufferOffset);
    // Serialize message field [max_lateral_accel]
    bufferOffset = _serializer.float64(obj.max_lateral_accel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LapStats
    let len;
    let data = new LapStats(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [lap_number]
    data.lap_number = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [lap_time]
    data.lap_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [avg_speed]
    data.avg_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_speed]
    data.max_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_slip]
    data.max_slip = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_lateral_accel]
    data.max_lateral_accel = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'eufs_msgs/LapStats';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f369797be29dfdde2a9c9d2a24f1d1a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int64 lap_number
    float64 lap_time
    float64 avg_speed
    float64 max_speed
    float64 max_slip
    float64 max_lateral_accel
    
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
    const resolved = new LapStats(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.lap_number !== undefined) {
      resolved.lap_number = msg.lap_number;
    }
    else {
      resolved.lap_number = 0
    }

    if (msg.lap_time !== undefined) {
      resolved.lap_time = msg.lap_time;
    }
    else {
      resolved.lap_time = 0.0
    }

    if (msg.avg_speed !== undefined) {
      resolved.avg_speed = msg.avg_speed;
    }
    else {
      resolved.avg_speed = 0.0
    }

    if (msg.max_speed !== undefined) {
      resolved.max_speed = msg.max_speed;
    }
    else {
      resolved.max_speed = 0.0
    }

    if (msg.max_slip !== undefined) {
      resolved.max_slip = msg.max_slip;
    }
    else {
      resolved.max_slip = 0.0
    }

    if (msg.max_lateral_accel !== undefined) {
      resolved.max_lateral_accel = msg.max_lateral_accel;
    }
    else {
      resolved.max_lateral_accel = 0.0
    }

    return resolved;
    }
};

module.exports = LapStats;
