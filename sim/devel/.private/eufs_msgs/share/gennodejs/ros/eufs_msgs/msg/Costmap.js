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

class Costmap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x_bounds_min = null;
      this.x_bounds_max = null;
      this.y_bounds_min = null;
      this.y_bounds_max = null;
      this.pixels_per_meter = null;
      this.channel0 = null;
      this.channel1 = null;
      this.channel2 = null;
      this.channel3 = null;
    }
    else {
      if (initObj.hasOwnProperty('x_bounds_min')) {
        this.x_bounds_min = initObj.x_bounds_min
      }
      else {
        this.x_bounds_min = 0.0;
      }
      if (initObj.hasOwnProperty('x_bounds_max')) {
        this.x_bounds_max = initObj.x_bounds_max
      }
      else {
        this.x_bounds_max = 0.0;
      }
      if (initObj.hasOwnProperty('y_bounds_min')) {
        this.y_bounds_min = initObj.y_bounds_min
      }
      else {
        this.y_bounds_min = 0.0;
      }
      if (initObj.hasOwnProperty('y_bounds_max')) {
        this.y_bounds_max = initObj.y_bounds_max
      }
      else {
        this.y_bounds_max = 0.0;
      }
      if (initObj.hasOwnProperty('pixels_per_meter')) {
        this.pixels_per_meter = initObj.pixels_per_meter
      }
      else {
        this.pixels_per_meter = 0.0;
      }
      if (initObj.hasOwnProperty('channel0')) {
        this.channel0 = initObj.channel0
      }
      else {
        this.channel0 = [];
      }
      if (initObj.hasOwnProperty('channel1')) {
        this.channel1 = initObj.channel1
      }
      else {
        this.channel1 = [];
      }
      if (initObj.hasOwnProperty('channel2')) {
        this.channel2 = initObj.channel2
      }
      else {
        this.channel2 = [];
      }
      if (initObj.hasOwnProperty('channel3')) {
        this.channel3 = initObj.channel3
      }
      else {
        this.channel3 = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Costmap
    // Serialize message field [x_bounds_min]
    bufferOffset = _serializer.float64(obj.x_bounds_min, buffer, bufferOffset);
    // Serialize message field [x_bounds_max]
    bufferOffset = _serializer.float64(obj.x_bounds_max, buffer, bufferOffset);
    // Serialize message field [y_bounds_min]
    bufferOffset = _serializer.float64(obj.y_bounds_min, buffer, bufferOffset);
    // Serialize message field [y_bounds_max]
    bufferOffset = _serializer.float64(obj.y_bounds_max, buffer, bufferOffset);
    // Serialize message field [pixels_per_meter]
    bufferOffset = _serializer.float64(obj.pixels_per_meter, buffer, bufferOffset);
    // Serialize message field [channel0]
    bufferOffset = _arraySerializer.float32(obj.channel0, buffer, bufferOffset, null);
    // Serialize message field [channel1]
    bufferOffset = _arraySerializer.float32(obj.channel1, buffer, bufferOffset, null);
    // Serialize message field [channel2]
    bufferOffset = _arraySerializer.float32(obj.channel2, buffer, bufferOffset, null);
    // Serialize message field [channel3]
    bufferOffset = _arraySerializer.float32(obj.channel3, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Costmap
    let len;
    let data = new Costmap(null);
    // Deserialize message field [x_bounds_min]
    data.x_bounds_min = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x_bounds_max]
    data.x_bounds_max = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_bounds_min]
    data.y_bounds_min = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_bounds_max]
    data.y_bounds_max = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pixels_per_meter]
    data.pixels_per_meter = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [channel0]
    data.channel0 = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [channel1]
    data.channel1 = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [channel2]
    data.channel2 = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [channel3]
    data.channel3 = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.channel0.length;
    length += 4 * object.channel1.length;
    length += 4 * object.channel2.length;
    length += 4 * object.channel3.length;
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'eufs_msgs/Costmap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ae50f9e6b8b35116ac4e867c7b195b7f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # costmap for the MPPI algorithm in the form of a 2D image
    
    # the bounds give the scale and limits of the image
    float64 x_bounds_min
    float64 x_bounds_max
    float64 y_bounds_min
    float64 y_bounds_max
    
    # he pixels per meter are used in scaling the image up
    float64 pixels_per_meter
    
    # the costmap contains 4 channels of floats
    float32[] channel0
    float32[] channel1
    float32[] channel2
    float32[] channel3
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Costmap(null);
    if (msg.x_bounds_min !== undefined) {
      resolved.x_bounds_min = msg.x_bounds_min;
    }
    else {
      resolved.x_bounds_min = 0.0
    }

    if (msg.x_bounds_max !== undefined) {
      resolved.x_bounds_max = msg.x_bounds_max;
    }
    else {
      resolved.x_bounds_max = 0.0
    }

    if (msg.y_bounds_min !== undefined) {
      resolved.y_bounds_min = msg.y_bounds_min;
    }
    else {
      resolved.y_bounds_min = 0.0
    }

    if (msg.y_bounds_max !== undefined) {
      resolved.y_bounds_max = msg.y_bounds_max;
    }
    else {
      resolved.y_bounds_max = 0.0
    }

    if (msg.pixels_per_meter !== undefined) {
      resolved.pixels_per_meter = msg.pixels_per_meter;
    }
    else {
      resolved.pixels_per_meter = 0.0
    }

    if (msg.channel0 !== undefined) {
      resolved.channel0 = msg.channel0;
    }
    else {
      resolved.channel0 = []
    }

    if (msg.channel1 !== undefined) {
      resolved.channel1 = msg.channel1;
    }
    else {
      resolved.channel1 = []
    }

    if (msg.channel2 !== undefined) {
      resolved.channel2 = msg.channel2;
    }
    else {
      resolved.channel2 = []
    }

    if (msg.channel3 !== undefined) {
      resolved.channel3 = msg.channel3;
    }
    else {
      resolved.channel3 = []
    }

    return resolved;
    }
};

module.exports = Costmap;
