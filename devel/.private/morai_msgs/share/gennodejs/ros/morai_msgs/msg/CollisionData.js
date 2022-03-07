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

class CollisionData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.object_type = null;
      this.object_id = null;
      this.pose_x = null;
      this.pose_y = null;
      this.pose_z = null;
      this.heading = null;
      this.global_offset_x = null;
      this.global_offset_y = null;
      this.global_offset_z = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('object_type')) {
        this.object_type = initObj.object_type
      }
      else {
        this.object_type = [];
      }
      if (initObj.hasOwnProperty('object_id')) {
        this.object_id = initObj.object_id
      }
      else {
        this.object_id = [];
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
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = [];
      }
      if (initObj.hasOwnProperty('global_offset_x')) {
        this.global_offset_x = initObj.global_offset_x
      }
      else {
        this.global_offset_x = 0.0;
      }
      if (initObj.hasOwnProperty('global_offset_y')) {
        this.global_offset_y = initObj.global_offset_y
      }
      else {
        this.global_offset_y = 0.0;
      }
      if (initObj.hasOwnProperty('global_offset_z')) {
        this.global_offset_z = initObj.global_offset_z
      }
      else {
        this.global_offset_z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CollisionData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [object_type]
    bufferOffset = _arraySerializer.string(obj.object_type, buffer, bufferOffset, null);
    // Serialize message field [object_id]
    bufferOffset = _arraySerializer.int32(obj.object_id, buffer, bufferOffset, null);
    // Serialize message field [pose_x]
    bufferOffset = _arraySerializer.float32(obj.pose_x, buffer, bufferOffset, null);
    // Serialize message field [pose_y]
    bufferOffset = _arraySerializer.float32(obj.pose_y, buffer, bufferOffset, null);
    // Serialize message field [pose_z]
    bufferOffset = _arraySerializer.float32(obj.pose_z, buffer, bufferOffset, null);
    // Serialize message field [heading]
    bufferOffset = _arraySerializer.float32(obj.heading, buffer, bufferOffset, null);
    // Serialize message field [global_offset_x]
    bufferOffset = _serializer.float64(obj.global_offset_x, buffer, bufferOffset);
    // Serialize message field [global_offset_y]
    bufferOffset = _serializer.float64(obj.global_offset_y, buffer, bufferOffset);
    // Serialize message field [global_offset_z]
    bufferOffset = _serializer.float64(obj.global_offset_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CollisionData
    let len;
    let data = new CollisionData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [object_type]
    data.object_type = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [object_id]
    data.object_id = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [pose_x]
    data.pose_x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [pose_y]
    data.pose_y = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [pose_z]
    data.pose_z = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [heading]
    data.heading = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [global_offset_x]
    data.global_offset_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [global_offset_y]
    data.global_offset_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [global_offset_z]
    data.global_offset_z = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.object_type.forEach((val) => {
      length += 4 + val.length;
    });
    length += 4 * object.object_id.length;
    length += 4 * object.pose_x.length;
    length += 4 * object.pose_y.length;
    length += 4 * object.pose_z.length;
    length += 4 * object.heading.length;
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/CollisionData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0630fa51ee74e1abba7806555a178f91';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    string[] object_type
    int32[] object_id
    
    float32[] pose_x
    float32[] pose_y
    float32[] pose_z
    float32[] heading
    
    float64 global_offset_x
    float64 global_offset_y
    float64 global_offset_z
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
    const resolved = new CollisionData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.object_type !== undefined) {
      resolved.object_type = msg.object_type;
    }
    else {
      resolved.object_type = []
    }

    if (msg.object_id !== undefined) {
      resolved.object_id = msg.object_id;
    }
    else {
      resolved.object_id = []
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

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = []
    }

    if (msg.global_offset_x !== undefined) {
      resolved.global_offset_x = msg.global_offset_x;
    }
    else {
      resolved.global_offset_x = 0.0
    }

    if (msg.global_offset_y !== undefined) {
      resolved.global_offset_y = msg.global_offset_y;
    }
    else {
      resolved.global_offset_y = 0.0
    }

    if (msg.global_offset_z !== undefined) {
      resolved.global_offset_z = msg.global_offset_z;
    }
    else {
      resolved.global_offset_z = 0.0
    }

    return resolved;
    }
};

module.exports = CollisionData;
