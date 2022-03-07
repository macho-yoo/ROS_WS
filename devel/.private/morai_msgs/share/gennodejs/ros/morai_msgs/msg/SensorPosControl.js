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

class SensorPosControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensor_type = null;
      this.sensor_index = null;
      this.pose_x = null;
      this.pose_y = null;
      this.pose_z = null;
      this.roll = null;
      this.pitch = null;
      this.yaw = null;
    }
    else {
      if (initObj.hasOwnProperty('sensor_type')) {
        this.sensor_type = initObj.sensor_type
      }
      else {
        this.sensor_type = [];
      }
      if (initObj.hasOwnProperty('sensor_index')) {
        this.sensor_index = initObj.sensor_index
      }
      else {
        this.sensor_index = [];
      }
      if (initObj.hasOwnProperty('pose_x')) {
        this.pose_x = initObj.pose_x
      }
      else {
        this.pose_x = [];
      }
      if (initObj.hasOwnProperty('pose_y')) {
        this.pose_y = initObj.pose_y
      }
      else {
        this.pose_y = [];
      }
      if (initObj.hasOwnProperty('pose_z')) {
        this.pose_z = initObj.pose_z
      }
      else {
        this.pose_z = [];
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = [];
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = [];
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorPosControl
    // Serialize message field [sensor_type]
    bufferOffset = _arraySerializer.string(obj.sensor_type, buffer, bufferOffset, null);
    // Serialize message field [sensor_index]
    bufferOffset = _arraySerializer.int16(obj.sensor_index, buffer, bufferOffset, null);
    // Serialize message field [pose_x]
    bufferOffset = _arraySerializer.float32(obj.pose_x, buffer, bufferOffset, null);
    // Serialize message field [pose_y]
    bufferOffset = _arraySerializer.float32(obj.pose_y, buffer, bufferOffset, null);
    // Serialize message field [pose_z]
    bufferOffset = _arraySerializer.float32(obj.pose_z, buffer, bufferOffset, null);
    // Serialize message field [roll]
    bufferOffset = _arraySerializer.float32(obj.roll, buffer, bufferOffset, null);
    // Serialize message field [pitch]
    bufferOffset = _arraySerializer.float32(obj.pitch, buffer, bufferOffset, null);
    // Serialize message field [yaw]
    bufferOffset = _arraySerializer.float32(obj.yaw, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorPosControl
    let len;
    let data = new SensorPosControl(null);
    // Deserialize message field [sensor_type]
    data.sensor_type = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [sensor_index]
    data.sensor_index = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [pose_x]
    data.pose_x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [pose_y]
    data.pose_y = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [pose_z]
    data.pose_z = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [roll]
    data.roll = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [pitch]
    data.pitch = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [yaw]
    data.yaw = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.sensor_type.forEach((val) => {
      length += 4 + val.length;
    });
    length += 2 * object.sensor_index.length;
    length += 4 * object.pose_x.length;
    length += 4 * object.pose_y.length;
    length += 4 * object.pose_z.length;
    length += 4 * object.roll.length;
    length += 4 * object.pitch.length;
    length += 4 * object.yaw.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/SensorPosControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c0a4bb9d4997ce436b313ba4dc41d53';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] sensor_type
    
    int16[] sensor_index
    
    float32[] pose_x
    float32[] pose_y
    float32[] pose_z
    float32[] roll
    float32[] pitch
    float32[] yaw
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SensorPosControl(null);
    if (msg.sensor_type !== undefined) {
      resolved.sensor_type = msg.sensor_type;
    }
    else {
      resolved.sensor_type = []
    }

    if (msg.sensor_index !== undefined) {
      resolved.sensor_index = msg.sensor_index;
    }
    else {
      resolved.sensor_index = []
    }

    if (msg.pose_x !== undefined) {
      resolved.pose_x = msg.pose_x;
    }
    else {
      resolved.pose_x = []
    }

    if (msg.pose_y !== undefined) {
      resolved.pose_y = msg.pose_y;
    }
    else {
      resolved.pose_y = []
    }

    if (msg.pose_z !== undefined) {
      resolved.pose_z = msg.pose_z;
    }
    else {
      resolved.pose_z = []
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = []
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = []
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = []
    }

    return resolved;
    }
};

module.exports = SensorPosControl;
