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

class GenericVehicleControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.emergency_stop = null;
      this.gear = null;
      this.speed = null;
      this.acceleration = null;
      this.steer = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('emergency_stop')) {
        this.emergency_stop = initObj.emergency_stop
      }
      else {
        this.emergency_stop = false;
      }
      if (initObj.hasOwnProperty('gear')) {
        this.gear = initObj.gear
      }
      else {
        this.gear = 0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = 0.0;
      }
      if (initObj.hasOwnProperty('steer')) {
        this.steer = initObj.steer
      }
      else {
        this.steer = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GenericVehicleControl
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [emergency_stop]
    bufferOffset = _serializer.bool(obj.emergency_stop, buffer, bufferOffset);
    // Serialize message field [gear]
    bufferOffset = _serializer.uint8(obj.gear, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float64(obj.speed, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = _serializer.float64(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [steer]
    bufferOffset = _serializer.float64(obj.steer, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GenericVehicleControl
    let len;
    let data = new GenericVehicleControl(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [emergency_stop]
    data.emergency_stop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gear]
    data.gear = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steer]
    data.steer = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/GenericVehicleControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e7242e2ff6ba1d4caf20d5a90ed61c09';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # You should set header.stamp when you publish this message to the correspoding topic
    #
    # - The header.stamp will be used for measuring timeout in the lower layer for fail-safe
    Header header
    
    # True for emergency stop
    # 
    # - DO NOT set this field unless the severe problem is detected(or expected)
    bool emergency_stop
    
    uint8 TYPE_GEAR_FORWARD=0
    uint8 TYPE_GEAR_NEUTRAL=1
    uint8 TYPE_GEAR_BACKWARD=2
    uint8 TYPE_GEAR_PARKING=3
    
    # One of the above TYPEGEAR* values
    #
    # - Values not in the above type will be ignored
    uint8 gear
    
    float64 CONST_SPEED_UPPERBOUND=5.5
    float64 CONST_SPEED_LOWERBOUND=-5.5
    
    # Target speed in unit of meter per second(m/sec)
    #
    # - Positive value means forward movement, negative value means reverse movement
    # - The value out of range [CONST_SPEED_LOWERBOUND, CONST_SPEED_LOWERBOUND] will be adjusted to CONST_SPEED_LOWERBOUND/CONST_SPEED_UPPERBOUND
    float64 speed
    
    float64 CONST_ACCELERATION_UPPERBOUND=4.0
    float64 CONST_ACCELERATION_LOWERBOUND=-4.0
    
    # Targer acceleration in meter per second^2(m/sec^2)
    #
    # - Positive value means accel., negative value means deaccel.
    # - The value out of range [CONST_ACCELERATION_LOWERBOUND, CONST_ACCELERATION_LOWERBOUND] will be adjusted to CONST_ACCELERATION_LOWERBOUND/CONST_ACCELERATION_UPPERBOUND
    float64 acceleration
    
    float64 CONST_STEER_LEFTMOST=28.1
    float64 CONST_STEER_RIGHTMOST=-28.1
    
    # Target steering angle in unit of degree(deg)
    #
    # - The negative value indicates right steer(positive: left steer)
    # - The value out of range [CONST_STEER_RIGHTMOST, CONST_STEER_LEFTMOST] will be adjusted to CONST_STEER_LEFTMOST/CONST_STEER_RIGHTMOST
    float64 steer
    
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
    const resolved = new GenericVehicleControl(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.emergency_stop !== undefined) {
      resolved.emergency_stop = msg.emergency_stop;
    }
    else {
      resolved.emergency_stop = false
    }

    if (msg.gear !== undefined) {
      resolved.gear = msg.gear;
    }
    else {
      resolved.gear = 0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = msg.acceleration;
    }
    else {
      resolved.acceleration = 0.0
    }

    if (msg.steer !== undefined) {
      resolved.steer = msg.steer;
    }
    else {
      resolved.steer = 0.0
    }

    return resolved;
    }
};

// Constants for message
GenericVehicleControl.Constants = {
  TYPE_GEAR_FORWARD: 0,
  TYPE_GEAR_NEUTRAL: 1,
  TYPE_GEAR_BACKWARD: 2,
  TYPE_GEAR_PARKING: 3,
  CONST_SPEED_UPPERBOUND: 5.5,
  CONST_SPEED_LOWERBOUND: -5.5,
  CONST_ACCELERATION_UPPERBOUND: 4.0,
  CONST_ACCELERATION_LOWERBOUND: -4.0,
  CONST_STEER_LEFTMOST: 28.1,
  CONST_STEER_RIGHTMOST: -28.1,
}

module.exports = GenericVehicleControl;
