// Auto-generated. Do not edit!

// (in-package morai_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MoraiTimestamp {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msec = null;
      this.dateTime = null;
    }
    else {
      if (initObj.hasOwnProperty('msec')) {
        this.msec = initObj.msec
      }
      else {
        this.msec = 0.0;
      }
      if (initObj.hasOwnProperty('dateTime')) {
        this.dateTime = initObj.dateTime
      }
      else {
        this.dateTime = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoraiTimestamp
    // Serialize message field [msec]
    bufferOffset = _serializer.float64(obj.msec, buffer, bufferOffset);
    // Serialize message field [dateTime]
    bufferOffset = _serializer.string(obj.dateTime, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoraiTimestamp
    let len;
    let data = new MoraiTimestamp(null);
    // Deserialize message field [msec]
    data.msec = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dateTime]
    data.dateTime = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.dateTime.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/MoraiTimestamp';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9c518394d21e3fbb8021d76f4d57e5d2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 msec
    string dateTime
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoraiTimestamp(null);
    if (msg.msec !== undefined) {
      resolved.msec = msg.msec;
    }
    else {
      resolved.msec = 0.0
    }

    if (msg.dateTime !== undefined) {
      resolved.dateTime = msg.dateTime;
    }
    else {
      resolved.dateTime = ''
    }

    return resolved;
    }
};

module.exports = MoraiTimestamp;
