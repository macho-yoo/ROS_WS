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

class ReplayInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ego_acc = null;
      this.ego_brake = null;
      this.ego_steer = null;
      this.ego_orientation_x = null;
      this.ego_orientation_y = null;
      this.ego_orientation_z = null;
      this.ego_orientation_w = null;
      this.ego_linearAcceleration_x = null;
      this.ego_linearAcceleration_y = null;
      this.ego_linearAcceleration_z = null;
      this.ego_AngularVelocity_x = null;
      this.ego_AngularVelocity_y = null;
      this.ego_AngularVelocity_z = null;
      this.num_of_objects = null;
      this.object_type = null;
      this.object_id = null;
      this.pose_x = null;
      this.pose_y = null;
      this.pose_z = null;
      this.heading = null;
      this.size_x = null;
      this.size_y = null;
      this.size_z = null;
      this.velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ego_acc')) {
        this.ego_acc = initObj.ego_acc
      }
      else {
        this.ego_acc = 0.0;
      }
      if (initObj.hasOwnProperty('ego_brake')) {
        this.ego_brake = initObj.ego_brake
      }
      else {
        this.ego_brake = 0.0;
      }
      if (initObj.hasOwnProperty('ego_steer')) {
        this.ego_steer = initObj.ego_steer
      }
      else {
        this.ego_steer = 0.0;
      }
      if (initObj.hasOwnProperty('ego_orientation_x')) {
        this.ego_orientation_x = initObj.ego_orientation_x
      }
      else {
        this.ego_orientation_x = 0.0;
      }
      if (initObj.hasOwnProperty('ego_orientation_y')) {
        this.ego_orientation_y = initObj.ego_orientation_y
      }
      else {
        this.ego_orientation_y = 0.0;
      }
      if (initObj.hasOwnProperty('ego_orientation_z')) {
        this.ego_orientation_z = initObj.ego_orientation_z
      }
      else {
        this.ego_orientation_z = 0.0;
      }
      if (initObj.hasOwnProperty('ego_orientation_w')) {
        this.ego_orientation_w = initObj.ego_orientation_w
      }
      else {
        this.ego_orientation_w = 0.0;
      }
      if (initObj.hasOwnProperty('ego_linearAcceleration_x')) {
        this.ego_linearAcceleration_x = initObj.ego_linearAcceleration_x
      }
      else {
        this.ego_linearAcceleration_x = 0.0;
      }
      if (initObj.hasOwnProperty('ego_linearAcceleration_y')) {
        this.ego_linearAcceleration_y = initObj.ego_linearAcceleration_y
      }
      else {
        this.ego_linearAcceleration_y = 0.0;
      }
      if (initObj.hasOwnProperty('ego_linearAcceleration_z')) {
        this.ego_linearAcceleration_z = initObj.ego_linearAcceleration_z
      }
      else {
        this.ego_linearAcceleration_z = 0.0;
      }
      if (initObj.hasOwnProperty('ego_AngularVelocity_x')) {
        this.ego_AngularVelocity_x = initObj.ego_AngularVelocity_x
      }
      else {
        this.ego_AngularVelocity_x = 0.0;
      }
      if (initObj.hasOwnProperty('ego_AngularVelocity_y')) {
        this.ego_AngularVelocity_y = initObj.ego_AngularVelocity_y
      }
      else {
        this.ego_AngularVelocity_y = 0.0;
      }
      if (initObj.hasOwnProperty('ego_AngularVelocity_z')) {
        this.ego_AngularVelocity_z = initObj.ego_AngularVelocity_z
      }
      else {
        this.ego_AngularVelocity_z = 0.0;
      }
      if (initObj.hasOwnProperty('num_of_objects')) {
        this.num_of_objects = initObj.num_of_objects
      }
      else {
        this.num_of_objects = 0;
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
      if (initObj.hasOwnProperty('size_x')) {
        this.size_x = initObj.size_x
      }
      else {
        this.size_x = [];
      }
      if (initObj.hasOwnProperty('size_y')) {
        this.size_y = initObj.size_y
      }
      else {
        this.size_y = [];
      }
      if (initObj.hasOwnProperty('size_z')) {
        this.size_z = initObj.size_z
      }
      else {
        this.size_z = [];
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReplayInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ego_acc]
    bufferOffset = _serializer.float64(obj.ego_acc, buffer, bufferOffset);
    // Serialize message field [ego_brake]
    bufferOffset = _serializer.float64(obj.ego_brake, buffer, bufferOffset);
    // Serialize message field [ego_steer]
    bufferOffset = _serializer.float64(obj.ego_steer, buffer, bufferOffset);
    // Serialize message field [ego_orientation_x]
    bufferOffset = _serializer.float64(obj.ego_orientation_x, buffer, bufferOffset);
    // Serialize message field [ego_orientation_y]
    bufferOffset = _serializer.float64(obj.ego_orientation_y, buffer, bufferOffset);
    // Serialize message field [ego_orientation_z]
    bufferOffset = _serializer.float64(obj.ego_orientation_z, buffer, bufferOffset);
    // Serialize message field [ego_orientation_w]
    bufferOffset = _serializer.float64(obj.ego_orientation_w, buffer, bufferOffset);
    // Serialize message field [ego_linearAcceleration_x]
    bufferOffset = _serializer.float64(obj.ego_linearAcceleration_x, buffer, bufferOffset);
    // Serialize message field [ego_linearAcceleration_y]
    bufferOffset = _serializer.float64(obj.ego_linearAcceleration_y, buffer, bufferOffset);
    // Serialize message field [ego_linearAcceleration_z]
    bufferOffset = _serializer.float64(obj.ego_linearAcceleration_z, buffer, bufferOffset);
    // Serialize message field [ego_AngularVelocity_x]
    bufferOffset = _serializer.float64(obj.ego_AngularVelocity_x, buffer, bufferOffset);
    // Serialize message field [ego_AngularVelocity_y]
    bufferOffset = _serializer.float64(obj.ego_AngularVelocity_y, buffer, bufferOffset);
    // Serialize message field [ego_AngularVelocity_z]
    bufferOffset = _serializer.float64(obj.ego_AngularVelocity_z, buffer, bufferOffset);
    // Serialize message field [num_of_objects]
    bufferOffset = _serializer.int32(obj.num_of_objects, buffer, bufferOffset);
    // Serialize message field [object_type]
    bufferOffset = _arraySerializer.int16(obj.object_type, buffer, bufferOffset, null);
    // Serialize message field [object_id]
    bufferOffset = _arraySerializer.int32(obj.object_id, buffer, bufferOffset, null);
    // Serialize message field [pose_x]
    bufferOffset = _arraySerializer.float64(obj.pose_x, buffer, bufferOffset, null);
    // Serialize message field [pose_y]
    bufferOffset = _arraySerializer.float64(obj.pose_y, buffer, bufferOffset, null);
    // Serialize message field [pose_z]
    bufferOffset = _arraySerializer.float64(obj.pose_z, buffer, bufferOffset, null);
    // Serialize message field [heading]
    bufferOffset = _arraySerializer.float64(obj.heading, buffer, bufferOffset, null);
    // Serialize message field [size_x]
    bufferOffset = _arraySerializer.float64(obj.size_x, buffer, bufferOffset, null);
    // Serialize message field [size_y]
    bufferOffset = _arraySerializer.float64(obj.size_y, buffer, bufferOffset, null);
    // Serialize message field [size_z]
    bufferOffset = _arraySerializer.float64(obj.size_z, buffer, bufferOffset, null);
    // Serialize message field [velocity]
    bufferOffset = _arraySerializer.float64(obj.velocity, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReplayInfo
    let len;
    let data = new ReplayInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ego_acc]
    data.ego_acc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ego_brake]
    data.ego_brake = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ego_steer]
    data.ego_steer = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ego_orientation_x]
    data.ego_orientation_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ego_orientation_y]
    data.ego_orientation_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ego_orientation_z]
    data.ego_orientation_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ego_orientation_w]
    data.ego_orientation_w = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ego_linearAcceleration_x]
    data.ego_linearAcceleration_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ego_linearAcceleration_y]
    data.ego_linearAcceleration_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ego_linearAcceleration_z]
    data.ego_linearAcceleration_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ego_AngularVelocity_x]
    data.ego_AngularVelocity_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ego_AngularVelocity_y]
    data.ego_AngularVelocity_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ego_AngularVelocity_z]
    data.ego_AngularVelocity_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [num_of_objects]
    data.num_of_objects = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [object_type]
    data.object_type = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [object_id]
    data.object_id = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [pose_x]
    data.pose_x = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pose_y]
    data.pose_y = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pose_z]
    data.pose_z = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [heading]
    data.heading = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [size_x]
    data.size_x = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [size_y]
    data.size_y = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [size_z]
    data.size_z = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [velocity]
    data.velocity = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 2 * object.object_type.length;
    length += 4 * object.object_id.length;
    length += 8 * object.pose_x.length;
    length += 8 * object.pose_y.length;
    length += 8 * object.pose_z.length;
    length += 8 * object.heading.length;
    length += 8 * object.size_x.length;
    length += 8 * object.size_y.length;
    length += 8 * object.size_z.length;
    length += 8 * object.velocity.length;
    return length + 148;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/ReplayInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5461824bc0fed3d006858ffb04fc7b18';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64 ego_acc
    float64 ego_brake
    float64 ego_steer
    
    float64 ego_orientation_x
    float64 ego_orientation_y
    float64 ego_orientation_z
    float64 ego_orientation_w
    
    float64 ego_linearAcceleration_x
    float64 ego_linearAcceleration_y
    float64 ego_linearAcceleration_z
    
    float64 ego_AngularVelocity_x
    float64 ego_AngularVelocity_y
    float64 ego_AngularVelocity_z
    
    int32 num_of_objects
    int16[] object_type
    
    int32[] object_id
    
    float64[] pose_x
    float64[] pose_y
    float64[] pose_z
    
    float64[] heading
    
    float64[] size_x
    float64[] size_y
    float64[] size_z
    
    float64[] velocity
    
    
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
    const resolved = new ReplayInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ego_acc !== undefined) {
      resolved.ego_acc = msg.ego_acc;
    }
    else {
      resolved.ego_acc = 0.0
    }

    if (msg.ego_brake !== undefined) {
      resolved.ego_brake = msg.ego_brake;
    }
    else {
      resolved.ego_brake = 0.0
    }

    if (msg.ego_steer !== undefined) {
      resolved.ego_steer = msg.ego_steer;
    }
    else {
      resolved.ego_steer = 0.0
    }

    if (msg.ego_orientation_x !== undefined) {
      resolved.ego_orientation_x = msg.ego_orientation_x;
    }
    else {
      resolved.ego_orientation_x = 0.0
    }

    if (msg.ego_orientation_y !== undefined) {
      resolved.ego_orientation_y = msg.ego_orientation_y;
    }
    else {
      resolved.ego_orientation_y = 0.0
    }

    if (msg.ego_orientation_z !== undefined) {
      resolved.ego_orientation_z = msg.ego_orientation_z;
    }
    else {
      resolved.ego_orientation_z = 0.0
    }

    if (msg.ego_orientation_w !== undefined) {
      resolved.ego_orientation_w = msg.ego_orientation_w;
    }
    else {
      resolved.ego_orientation_w = 0.0
    }

    if (msg.ego_linearAcceleration_x !== undefined) {
      resolved.ego_linearAcceleration_x = msg.ego_linearAcceleration_x;
    }
    else {
      resolved.ego_linearAcceleration_x = 0.0
    }

    if (msg.ego_linearAcceleration_y !== undefined) {
      resolved.ego_linearAcceleration_y = msg.ego_linearAcceleration_y;
    }
    else {
      resolved.ego_linearAcceleration_y = 0.0
    }

    if (msg.ego_linearAcceleration_z !== undefined) {
      resolved.ego_linearAcceleration_z = msg.ego_linearAcceleration_z;
    }
    else {
      resolved.ego_linearAcceleration_z = 0.0
    }

    if (msg.ego_AngularVelocity_x !== undefined) {
      resolved.ego_AngularVelocity_x = msg.ego_AngularVelocity_x;
    }
    else {
      resolved.ego_AngularVelocity_x = 0.0
    }

    if (msg.ego_AngularVelocity_y !== undefined) {
      resolved.ego_AngularVelocity_y = msg.ego_AngularVelocity_y;
    }
    else {
      resolved.ego_AngularVelocity_y = 0.0
    }

    if (msg.ego_AngularVelocity_z !== undefined) {
      resolved.ego_AngularVelocity_z = msg.ego_AngularVelocity_z;
    }
    else {
      resolved.ego_AngularVelocity_z = 0.0
    }

    if (msg.num_of_objects !== undefined) {
      resolved.num_of_objects = msg.num_of_objects;
    }
    else {
      resolved.num_of_objects = 0
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

    if (msg.size_x !== undefined) {
      resolved.size_x = msg.size_x;
    }
    else {
      resolved.size_x = []
    }

    if (msg.size_y !== undefined) {
      resolved.size_y = msg.size_y;
    }
    else {
      resolved.size_y = []
    }

    if (msg.size_z !== undefined) {
      resolved.size_z = msg.size_z;
    }
    else {
      resolved.size_z = []
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = []
    }

    return resolved;
    }
};

module.exports = ReplayInfo;
