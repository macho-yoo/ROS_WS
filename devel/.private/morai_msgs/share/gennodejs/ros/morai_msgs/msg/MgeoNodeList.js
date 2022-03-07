// Auto-generated. Do not edit!

// (in-package morai_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MgeoNode = require('./MgeoNode.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MgeoNodeList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.node_list = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('node_list')) {
        this.node_list = initObj.node_list
      }
      else {
        this.node_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MgeoNodeList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [node_list]
    // Serialize the length for message field [node_list]
    bufferOffset = _serializer.uint32(obj.node_list.length, buffer, bufferOffset);
    obj.node_list.forEach((val) => {
      bufferOffset = MgeoNode.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MgeoNodeList
    let len;
    let data = new MgeoNodeList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [node_list]
    // Deserialize array length for message field [node_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.node_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.node_list[i] = MgeoNode.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.node_list.forEach((val) => {
      length += MgeoNode.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/MgeoNodeList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3ae9b44b45a36f86376fd00317de8521';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new MgeoNodeList(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.node_list !== undefined) {
      resolved.node_list = new Array(msg.node_list.length);
      for (let i = 0; i < resolved.node_list.length; ++i) {
        resolved.node_list[i] = MgeoNode.Resolve(msg.node_list[i]);
      }
    }
    else {
      resolved.node_list = []
    }

    return resolved;
    }
};

module.exports = MgeoNodeList;
