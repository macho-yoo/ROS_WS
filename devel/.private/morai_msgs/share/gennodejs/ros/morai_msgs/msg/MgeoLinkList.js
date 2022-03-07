// Auto-generated. Do not edit!

// (in-package morai_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MgeoLink = require('./MgeoLink.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MgeoLinkList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.link_list = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('link_list')) {
        this.link_list = initObj.link_list
      }
      else {
        this.link_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MgeoLinkList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [link_list]
    // Serialize the length for message field [link_list]
    bufferOffset = _serializer.uint32(obj.link_list.length, buffer, bufferOffset);
    obj.link_list.forEach((val) => {
      bufferOffset = MgeoLink.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MgeoLinkList
    let len;
    let data = new MgeoLinkList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [link_list]
    // Deserialize array length for message field [link_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.link_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.link_list[i] = MgeoLink.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.link_list.forEach((val) => {
      length += MgeoLink.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/MgeoLinkList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a00a34e18d90273a0b75ccb7cc3710dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    MgeoLink[] link_list
    
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
    const resolved = new MgeoLinkList(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.link_list !== undefined) {
      resolved.link_list = new Array(msg.link_list.length);
      for (let i = 0; i < resolved.link_list.length; ++i) {
        resolved.link_list[i] = MgeoLink.Resolve(msg.link_list[i]);
      }
    }
    else {
      resolved.link_list = []
    }

    return resolved;
    }
};

module.exports = MgeoLinkList;
