// Auto-generated. Do not edit!

// (in-package morai_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MgeoNodeList = require('./MgeoNodeList.js');
let MgeoLinkList = require('./MgeoLinkList.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Mgeo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_name = null;
      this.local_offset = null;
      this.lane_change_link_include = null;
      this.node_list = null;
      this.link_list = null;
    }
    else {
      if (initObj.hasOwnProperty('map_name')) {
        this.map_name = initObj.map_name
      }
      else {
        this.map_name = '';
      }
      if (initObj.hasOwnProperty('local_offset')) {
        this.local_offset = initObj.local_offset
      }
      else {
        this.local_offset = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('lane_change_link_include')) {
        this.lane_change_link_include = initObj.lane_change_link_include
      }
      else {
        this.lane_change_link_include = false;
      }
      if (initObj.hasOwnProperty('node_list')) {
        this.node_list = initObj.node_list
      }
      else {
        this.node_list = new MgeoNodeList();
      }
      if (initObj.hasOwnProperty('link_list')) {
        this.link_list = initObj.link_list
      }
      else {
        this.link_list = new MgeoLinkList();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Mgeo
    // Serialize message field [map_name]
    bufferOffset = _serializer.string(obj.map_name, buffer, bufferOffset);
    // Serialize message field [local_offset]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.local_offset, buffer, bufferOffset);
    // Serialize message field [lane_change_link_include]
    bufferOffset = _serializer.bool(obj.lane_change_link_include, buffer, bufferOffset);
    // Serialize message field [node_list]
    bufferOffset = MgeoNodeList.serialize(obj.node_list, buffer, bufferOffset);
    // Serialize message field [link_list]
    bufferOffset = MgeoLinkList.serialize(obj.link_list, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Mgeo
    let len;
    let data = new Mgeo(null);
    // Deserialize message field [map_name]
    data.map_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [local_offset]
    data.local_offset = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [lane_change_link_include]
    data.lane_change_link_include = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [node_list]
    data.node_list = MgeoNodeList.deserialize(buffer, bufferOffset);
    // Deserialize message field [link_list]
    data.link_list = MgeoLinkList.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.map_name.length;
    length += MgeoNodeList.getMessageSize(object.node_list);
    length += MgeoLinkList.getMessageSize(object.link_list);
    return length + 61;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/Mgeo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ffa290ab15496480ebcd89bbc9fb80e1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string map_name
    
    geometry_msgs/Pose local_offset
    bool lane_change_link_include
    
    MgeoNodeList node_list
    MgeoLinkList link_list
    
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
    
    ================================================================================
    MSG: morai_msgs/MgeoNodeList
    Header header
    
    MgeoNode[] node_list
    
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
    
    ================================================================================
    MSG: morai_msgs/MgeoNode
    string node_id
    float32 cost
    float32 time_cost
    
    int32 node_type #if the node type is -1, unuse this data
    
    string[] to_link_id
    string[] from_link_id
    
    geometry_msgs/Pose node
    
    ================================================================================
    MSG: morai_msgs/MgeoLinkList
    Header header
    
    MgeoLink[] link_list
    
    ================================================================================
    MSG: morai_msgs/MgeoLink
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Mgeo(null);
    if (msg.map_name !== undefined) {
      resolved.map_name = msg.map_name;
    }
    else {
      resolved.map_name = ''
    }

    if (msg.local_offset !== undefined) {
      resolved.local_offset = geometry_msgs.msg.Pose.Resolve(msg.local_offset)
    }
    else {
      resolved.local_offset = new geometry_msgs.msg.Pose()
    }

    if (msg.lane_change_link_include !== undefined) {
      resolved.lane_change_link_include = msg.lane_change_link_include;
    }
    else {
      resolved.lane_change_link_include = false
    }

    if (msg.node_list !== undefined) {
      resolved.node_list = MgeoNodeList.Resolve(msg.node_list)
    }
    else {
      resolved.node_list = new MgeoNodeList()
    }

    if (msg.link_list !== undefined) {
      resolved.link_list = MgeoLinkList.Resolve(msg.link_list)
    }
    else {
      resolved.link_list = new MgeoLinkList()
    }

    return resolved;
    }
};

module.exports = Mgeo;
