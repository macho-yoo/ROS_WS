// Auto-generated. Do not edit!

// (in-package morai_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GhostMessage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.option_geometry = null;
      this.option_dynamics = null;
      this.offset_east = null;
      this.offset_north = null;
      this.offset_height = null;
      this.pos_x = null;
      this.pos_y = null;
      this.pos_z = null;
      this.heading = null;
      this.velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('option_geometry')) {
        this.option_geometry = initObj.option_geometry
      }
      else {
        this.option_geometry = 0;
      }
      if (initObj.hasOwnProperty('option_dynamics')) {
        this.option_dynamics = initObj.option_dynamics
      }
      else {
        this.option_dynamics = 0;
      }
      if (initObj.hasOwnProperty('offset_east')) {
        this.offset_east = initObj.offset_east
      }
      else {
        this.offset_east = 0.0;
      }
      if (initObj.hasOwnProperty('offset_north')) {
        this.offset_north = initObj.offset_north
      }
      else {
        this.offset_north = 0.0;
      }
      if (initObj.hasOwnProperty('offset_height')) {
        this.offset_height = initObj.offset_height
      }
      else {
        this.offset_height = 0.0;
      }
      if (initObj.hasOwnProperty('pos_x')) {
        this.pos_x = initObj.pos_x
      }
      else {
        this.pos_x = 0.0;
      }
      if (initObj.hasOwnProperty('pos_y')) {
        this.pos_y = initObj.pos_y
      }
      else {
        this.pos_y = 0.0;
      }
      if (initObj.hasOwnProperty('pos_z')) {
        this.pos_z = initObj.pos_z
      }
      else {
        this.pos_z = 0.0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GhostMessage
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [option_geometry]
    bufferOffset = _serializer.int16(obj.option_geometry, buffer, bufferOffset);
    // Serialize message field [option_dynamics]
    bufferOffset = _serializer.byte(obj.option_dynamics, buffer, bufferOffset);
    // Serialize message field [offset_east]
    bufferOffset = _serializer.float64(obj.offset_east, buffer, bufferOffset);
    // Serialize message field [offset_north]
    bufferOffset = _serializer.float64(obj.offset_north, buffer, bufferOffset);
    // Serialize message field [offset_height]
    bufferOffset = _serializer.float64(obj.offset_height, buffer, bufferOffset);
    // Serialize message field [pos_x]
    bufferOffset = _serializer.float64(obj.pos_x, buffer, bufferOffset);
    // Serialize message field [pos_y]
    bufferOffset = _serializer.float64(obj.pos_y, buffer, bufferOffset);
    // Serialize message field [pos_z]
    bufferOffset = _serializer.float64(obj.pos_z, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float64(obj.heading, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = _serializer.float64(obj.velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GhostMessage
    let len;
    let data = new GhostMessage(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [option_geometry]
    data.option_geometry = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [option_dynamics]
    data.option_dynamics = _deserializer.byte(buffer, bufferOffset);
    // Deserialize message field [offset_east]
    data.offset_east = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [offset_north]
    data.offset_north = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [offset_height]
    data.offset_height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pos_x]
    data.pos_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pos_y]
    data.pos_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pos_z]
    data.pos_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 67;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/GhostMessage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff33699472448776499294d59ada2106';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int16 option_geometry
    byte option_dynamics
    
    float64 offset_east
    float64 offset_north
    float64 offset_height
    
    float64 pos_x
    float64 pos_y
    float64 pos_z
    
    float64 heading
    
    float64 velocity
    
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
    const resolved = new GhostMessage(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.option_geometry !== undefined) {
      resolved.option_geometry = msg.option_geometry;
    }
    else {
      resolved.option_geometry = 0
    }

    if (msg.option_dynamics !== undefined) {
      resolved.option_dynamics = msg.option_dynamics;
    }
    else {
      resolved.option_dynamics = 0
    }

    if (msg.offset_east !== undefined) {
      resolved.offset_east = msg.offset_east;
    }
    else {
      resolved.offset_east = 0.0
    }

    if (msg.offset_north !== undefined) {
      resolved.offset_north = msg.offset_north;
    }
    else {
      resolved.offset_north = 0.0
    }

    if (msg.offset_height !== undefined) {
      resolved.offset_height = msg.offset_height;
    }
    else {
      resolved.offset_height = 0.0
    }

    if (msg.pos_x !== undefined) {
      resolved.pos_x = msg.pos_x;
    }
    else {
      resolved.pos_x = 0.0
    }

    if (msg.pos_y !== undefined) {
      resolved.pos_y = msg.pos_y;
    }
    else {
      resolved.pos_y = 0.0
    }

    if (msg.pos_z !== undefined) {
      resolved.pos_z = msg.pos_z;
    }
    else {
      resolved.pos_z = 0.0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0.0
    }

    return resolved;
    }
};

module.exports = GhostMessage;
