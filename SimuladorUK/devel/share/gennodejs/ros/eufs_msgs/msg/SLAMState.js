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

class SLAMState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.loop_closed = null;
      this.laps = null;
      this.status = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('loop_closed')) {
        this.loop_closed = initObj.loop_closed
      }
      else {
        this.loop_closed = false;
      }
      if (initObj.hasOwnProperty('laps')) {
        this.laps = initObj.laps
      }
      else {
        this.laps = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SLAMState
    // Serialize message field [loop_closed]
    bufferOffset = _serializer.bool(obj.loop_closed, buffer, bufferOffset);
    // Serialize message field [laps]
    bufferOffset = _serializer.int16(obj.laps, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.int8(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SLAMState
    let len;
    let data = new SLAMState(null);
    // Deserialize message field [loop_closed]
    data.loop_closed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [laps]
    data.laps = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.status.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'eufs_msgs/SLAMState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab64b055dcd9ea5dad8d577fe02146d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool loop_closed          # True after loop closure
    int16 laps
    string status             # Dump for any logging purposes. Eg: "particle covariance high; can't localise"
    
    # Possible states of the algorithm
    int8 NO_INPUTS=0          # No inputs have been received yet
    int8 MAPPING=1            # Building map
    int8 LOCALISING=2         # Loop closed, now localising only
    int8 TIMEOUT=3            # Input topics timedout
    int8 RECOMMENDS_FAILURE=4 # If true, critical failure!  Recommends emergency shutdown
    
    int8 state                # States enumerated above
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SLAMState(null);
    if (msg.loop_closed !== undefined) {
      resolved.loop_closed = msg.loop_closed;
    }
    else {
      resolved.loop_closed = false
    }

    if (msg.laps !== undefined) {
      resolved.laps = msg.laps;
    }
    else {
      resolved.laps = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    return resolved;
    }
};

// Constants for message
SLAMState.Constants = {
  NO_INPUTS: 0,
  MAPPING: 1,
  LOCALISING: 2,
  TIMEOUT: 3,
  RECOMMENDS_FAILURE: 4,
}

module.exports = SLAMState;
