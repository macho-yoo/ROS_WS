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

class MgeoNode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node_id = null;
      this.cost = null;
      this.time_cost = null;
      this.node_type = null;
      this.to_link_id = null;
      this.from_link_id = null;
      this.node = null;
    }
    else {
      if (initObj.hasOwnProperty('node_id')) {
        this.node_id = initObj.node_id
      }
      else {
        this.node_id = '';
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
      if (initObj.hasOwnProperty('node_type')) {
        this.node_type = initObj.node_type
      }
      else {
        this.node_type = 0;
      }
      if (initObj.hasOwnProperty('to_link_id')) {
        this.to_link_id = initObj.to_link_id
      }
      else {
        this.to_link_id = [];
      }
      if (initObj.hasOwnProperty('from_link_id')) {
        this.from_link_id = initObj.from_link_id
      }
      else {
        this.from_link_id = [];
      }
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MgeoNode
    // Serialize message field [node_id]
    bufferOffset = _serializer.string(obj.node_id, buffer, bufferOffset);
    // Serialize message field [cost]
    bufferOffset = _serializer.float32(obj.cost, buffer, bufferOffset);
    // Serialize message field [time_cost]
    bufferOffset = _serializer.float32(obj.time_cost, buffer, bufferOffset);
    // Serialize message field [node_type]
    bufferOffset = _serializer.int32(obj.node_type, buffer, bufferOffset);
    // Serialize message field [to_link_id]
    bufferOffset = _arraySerializer.string(obj.to_link_id, buffer, bufferOffset, null);
    // Serialize message field [from_link_id]
    bufferOffset = _arraySerializer.string(obj.from_link_id, buffer, bufferOffset, null);
    // Serialize message field [node]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.node, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MgeoNode
    let len;
    let data = new MgeoNode(null);
    // Deserialize message field [node_id]
    data.node_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [cost]
    data.cost = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [time_cost]
    data.time_cost = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [node_type]
    data.node_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [to_link_id]
    data.to_link_id = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [from_link_id]
    data.from_link_id = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [node]
    data.node = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.node_id.length;
    object.to_link_id.forEach((val) => {
      length += 4 + val.length;
    });
    object.from_link_id.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/MgeoNode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e260c05524b8fac9ccdd7f9ed4a7cd47';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new MgeoNode(null);
    if (msg.node_id !== undefined) {
      resolved.node_id = msg.node_id;
    }
    else {
      resolved.node_id = ''
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

    if (msg.node_type !== undefined) {
      resolved.node_type = msg.node_type;
    }
    else {
      resolved.node_type = 0
    }

    if (msg.to_link_id !== undefined) {
      resolved.to_link_id = msg.to_link_id;
    }
    else {
      resolved.to_link_id = []
    }

    if (msg.from_link_id !== undefined) {
      resolved.from_link_id = msg.from_link_id;
    }
    else {
      resolved.from_link_id = []
    }

    if (msg.node !== undefined) {
      resolved.node = geometry_msgs.msg.Pose.Resolve(msg.node)
    }
    else {
      resolved.node = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = MgeoNode;
