// Auto-generated. Do not edit!

// (in-package morai_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class MgeoLink {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.link_id = null;
      this.cost = null;
      this.time_cost = null;
      this.lane_idx = null;
      this.left_link_id = null;
      this.right_link_id = null;
      this.to_node_id = null;
      this.from_node_id = null;
      this.link_type = null;
      this.length = null;
      this.speed = null;
      this.change_lane = null;
      this.change_link_id = null;
      this.waypoints = null;
    }
    else {
      if (initObj.hasOwnProperty('link_id')) {
        this.link_id = initObj.link_id
      }
      else {
        this.link_id = '';
      }
      if (initObj.hasOwnProperty('cost')) {
        this.cost = initObj.cost
      }
      else {
        this.cost = 0.0;
      }
      if (initObj.hasOwnProperty('time_cost')) {
        this.time_cost = initObj.time_cost
      }
      else {
        this.time_cost = 0.0;
      }
      if (initObj.hasOwnProperty('lane_idx')) {
        this.lane_idx = initObj.lane_idx
      }
      else {
        this.lane_idx = 0;
      }
      if (initObj.hasOwnProperty('left_link_id')) {
        this.left_link_id = initObj.left_link_id
      }
      else {
        this.left_link_id = '';
      }
      if (initObj.hasOwnProperty('right_link_id')) {
        this.right_link_id = initObj.right_link_id
      }
      else {
        this.right_link_id = '';
      }
      if (initObj.hasOwnProperty('to_node_id')) {
        this.to_node_id = initObj.to_node_id
      }
      else {
        this.to_node_id = '';
      }
      if (initObj.hasOwnProperty('from_node_id')) {
        this.from_node_id = initObj.from_node_id
      }
      else {
        this.from_node_id = '';
      }
      if (initObj.hasOwnProperty('link_type')) {
        this.link_type = initObj.link_type
      }
      else {
        this.link_type = 0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0;
      }
      if (initObj.hasOwnProperty('change_lane')) {
        this.change_lane = initObj.change_lane
      }
      else {
        this.change_lane = 0;
      }
      if (initObj.hasOwnProperty('change_link_id')) {
        this.change_link_id = initObj.change_link_id
      }
      else {
        this.change_link_id = '';
      }
      if (initObj.hasOwnProperty('waypoints')) {
        this.waypoints = initObj.waypoints
      }
      else {
        this.waypoints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MgeoLink
    // Serialize message field [link_id]
    bufferOffset = _serializer.string(obj.link_id, buffer, bufferOffset);
    // Serialize message field [cost]
    bufferOffset = _serializer.float32(obj.cost, buffer, bufferOffset);
    // Serialize message field [time_cost]
    bufferOffset = _serializer.float32(obj.time_cost, buffer, bufferOffset);
    // Serialize message field [lane_idx]
    bufferOffset = _serializer.uint32(obj.lane_idx, buffer, bufferOffset);
    // Serialize message field [left_link_id]
    bufferOffset = _serializer.string(obj.left_link_id, buffer, bufferOffset);
    // Serialize message field [right_link_id]
    bufferOffset = _serializer.string(obj.right_link_id, buffer, bufferOffset);
    // Serialize message field [to_node_id]
    bufferOffset = _serializer.string(obj.to_node_id, buffer, bufferOffset);
    // Serialize message field [from_node_id]
    bufferOffset = _serializer.string(obj.from_node_id, buffer, bufferOffset);
    // Serialize message field [link_type]
    bufferOffset = _serializer.int32(obj.link_type, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.uint32(obj.length, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.uint32(obj.speed, buffer, bufferOffset);
    // Serialize message field [change_lane]
    bufferOffset = _serializer.int32(obj.change_lane, buffer, bufferOffset);
    // Serialize message field [change_link_id]
    bufferOffset = _serializer.string(obj.change_link_id, buffer, bufferOffset);
    // Serialize message field [waypoints]
    // Serialize the length for message field [waypoints]
    bufferOffset = _serializer.uint32(obj.waypoints.length, buffer, bufferOffset);
    obj.waypoints.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MgeoLink
    let len;
    let data = new MgeoLink(null);
    // Deserialize message field [link_id]
    data.link_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [cost]
    data.cost = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [time_cost]
    data.time_cost = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lane_idx]
    data.lane_idx = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [left_link_id]
    data.left_link_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [right_link_id]
    data.right_link_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [to_node_id]
    data.to_node_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [from_node_id]
    data.from_node_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [link_type]
    data.link_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [change_lane]
    data.change_lane = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [change_link_id]
    data.change_link_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [waypoints]
    // Deserialize array length for message field [waypoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.waypoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.waypoints[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.link_id.length;
    length += object.left_link_id.length;
    length += object.right_link_id.length;
    length += object.to_node_id.length;
    length += object.from_node_id.length;
    length += object.change_link_id.length;
    length += 56 * object.waypoints.length;
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/MgeoLink';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5259cb6df2dc66cea1017651f36dfbf5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string link_id
    float32 cost
    float32 time_cost
    
    uint32 lane_idx
    string left_link_id
    string right_link_id
    
    string to_node_id
    string from_node_id
    
    int32 link_type
    uint32 length
    uint32 speed
    
    # 0: not change, 1: left, 2: right
    int32 change_lane
    # change target link id
    string change_link_id
    
    # link_type enum
    int32 LINK_NONE=0
    int32 LINK_TOLLGATE_NORMAL=3
    int32 LINK_BUS_LANE=4
    int32 LINK_REVERSIBLE_LANE=5
    int32 LINK_REGULAR_LANE=6
    
    # change_lane enum
    int32 CHANGE_NONE=0
    int32 CHANGE_LEFT=1
    int32 CHANGE_RIGHT=2
    
    geometry_msgs/Pose[] waypoints
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MgeoLink(null);
    if (msg.link_id !== undefined) {
      resolved.link_id = msg.link_id;
    }
    else {
      resolved.link_id = ''
    }

    if (msg.cost !== undefined) {
      resolved.cost = msg.cost;
    }
    else {
      resolved.cost = 0.0
    }

    if (msg.time_cost !== undefined) {
      resolved.time_cost = msg.time_cost;
    }
    else {
      resolved.time_cost = 0.0
    }

    if (msg.lane_idx !== undefined) {
      resolved.lane_idx = msg.lane_idx;
    }
    else {
      resolved.lane_idx = 0
    }

    if (msg.left_link_id !== undefined) {
      resolved.left_link_id = msg.left_link_id;
    }
    else {
      resolved.left_link_id = ''
    }

    if (msg.right_link_id !== undefined) {
      resolved.right_link_id = msg.right_link_id;
    }
    else {
      resolved.right_link_id = ''
    }

    if (msg.to_node_id !== undefined) {
      resolved.to_node_id = msg.to_node_id;
    }
    else {
      resolved.to_node_id = ''
    }

    if (msg.from_node_id !== undefined) {
      resolved.from_node_id = msg.from_node_id;
    }
    else {
      resolved.from_node_id = ''
    }

    if (msg.link_type !== undefined) {
      resolved.link_type = msg.link_type;
    }
    else {
      resolved.link_type = 0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0
    }

    if (msg.change_lane !== undefined) {
      resolved.change_lane = msg.change_lane;
    }
    else {
      resolved.change_lane = 0
    }

    if (msg.change_link_id !== undefined) {
      resolved.change_link_id = msg.change_link_id;
    }
    else {
      resolved.change_link_id = ''
    }

    if (msg.waypoints !== undefined) {
      resolved.waypoints = new Array(msg.waypoints.length);
      for (let i = 0; i < resolved.waypoints.length; ++i) {
        resolved.waypoints[i] = geometry_msgs.msg.Pose.Resolve(msg.waypoints[i]);
      }
    }
    else {
      resolved.waypoints = []
    }

    return resolved;
    }
};

// Constants for message
MgeoLink.Constants = {
  LINK_NONE: 0,
  LINK_TOLLGATE_NORMAL: 3,
  LINK_BUS_LANE: 4,
  LINK_REVERSIBLE_LANE: 5,
  LINK_REGULAR_LANE: 6,
  CHANGE_NONE: 0,
  CHANGE_LEFT: 1,
  CHANGE_RIGHT: 2,
}

module.exports = MgeoLink;
