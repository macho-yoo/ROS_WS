; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude GenericVehicleControl.msg.html

(cl:defclass <GenericVehicleControl> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (emergency_stop
    :reader emergency_stop
    :initarg :emergency_stop
    :type cl:boolean
    :initform cl:nil)
   (gear
    :reader gear
    :initarg :gear
    :type cl:fixnum
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type cl:float
    :initform 0.0)
   (steer
    :reader steer
    :initarg :steer
    :type cl:float
    :initform 0.0))
)

(cl:defclass GenericVehicleControl (<GenericVehicleControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenericVehicleControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenericVehicleControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<GenericVehicleControl> is deprecated: use morai_msgs-msg:GenericVehicleControl instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GenericVehicleControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:header-val is deprecated.  Use morai_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'emergency_stop-val :lambda-list '(m))
(cl:defmethod emergency_stop-val ((m <GenericVehicleControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:emergency_stop-val is deprecated.  Use morai_msgs-msg:emergency_stop instead.")
  (emergency_stop m))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <GenericVehicleControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:gear-val is deprecated.  Use morai_msgs-msg:gear instead.")
  (gear m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <GenericVehicleControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:speed-val is deprecated.  Use morai_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <GenericVehicleControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:acceleration-val is deprecated.  Use morai_msgs-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'steer-val :lambda-list '(m))
(cl:defmethod steer-val ((m <GenericVehicleControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:steer-val is deprecated.  Use morai_msgs-msg:steer instead.")
  (steer m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GenericVehicleControl>)))
    "Constants for message type '<GenericVehicleControl>"
  '((:TYPE_GEAR_FORWARD . 0)
    (:TYPE_GEAR_NEUTRAL . 1)
    (:TYPE_GEAR_BACKWARD . 2)
    (:TYPE_GEAR_PARKING . 3)
    (:CONST_SPEED_UPPERBOUND . 5.5)
    (:CONST_SPEED_LOWERBOUND . -5.5)
    (:CONST_ACCELERATION_UPPERBOUND . 4.0)
    (:CONST_ACCELERATION_LOWERBOUND . -4.0)
    (:CONST_STEER_LEFTMOST . 28.1)
    (:CONST_STEER_RIGHTMOST . -28.1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GenericVehicleControl)))
    "Constants for message type 'GenericVehicleControl"
  '((:TYPE_GEAR_FORWARD . 0)
    (:TYPE_GEAR_NEUTRAL . 1)
    (:TYPE_GEAR_BACKWARD . 2)
    (:TYPE_GEAR_PARKING . 3)
    (:CONST_SPEED_UPPERBOUND . 5.5)
    (:CONST_SPEED_LOWERBOUND . -5.5)
    (:CONST_ACCELERATION_UPPERBOUND . 4.0)
    (:CONST_ACCELERATION_LOWERBOUND . -4.0)
    (:CONST_STEER_LEFTMOST . 28.1)
    (:CONST_STEER_RIGHTMOST . -28.1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenericVehicleControl>) ostream)
  "Serializes a message object of type '<GenericVehicleControl>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'emergency_stop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'acceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenericVehicleControl>) istream)
  "Deserializes a message object of type '<GenericVehicleControl>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'emergency_stop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acceleration) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steer) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenericVehicleControl>)))
  "Returns string type for a message object of type '<GenericVehicleControl>"
  "morai_msgs/GenericVehicleControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenericVehicleControl)))
  "Returns string type for a message object of type 'GenericVehicleControl"
  "morai_msgs/GenericVehicleControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenericVehicleControl>)))
  "Returns md5sum for a message object of type '<GenericVehicleControl>"
  "e7242e2ff6ba1d4caf20d5a90ed61c09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenericVehicleControl)))
  "Returns md5sum for a message object of type 'GenericVehicleControl"
  "e7242e2ff6ba1d4caf20d5a90ed61c09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenericVehicleControl>)))
  "Returns full string definition for message of type '<GenericVehicleControl>"
  (cl:format cl:nil "# You should set header.stamp when you publish this message to the correspoding topic~%#~%# - The header.stamp will be used for measuring timeout in the lower layer for fail-safe~%Header header~%~%# True for emergency stop~%# ~%# - DO NOT set this field unless the severe problem is detected(or expected)~%bool emergency_stop~%~%uint8 TYPE_GEAR_FORWARD=0~%uint8 TYPE_GEAR_NEUTRAL=1~%uint8 TYPE_GEAR_BACKWARD=2~%uint8 TYPE_GEAR_PARKING=3~%~%# One of the above TYPEGEAR* values~%#~%# - Values not in the above type will be ignored~%uint8 gear~%~%float64 CONST_SPEED_UPPERBOUND=5.5~%float64 CONST_SPEED_LOWERBOUND=-5.5~%~%# Target speed in unit of meter per second(m/sec)~%#~%# - Positive value means forward movement, negative value means reverse movement~%# - The value out of range [CONST_SPEED_LOWERBOUND, CONST_SPEED_LOWERBOUND] will be adjusted to CONST_SPEED_LOWERBOUND/CONST_SPEED_UPPERBOUND~%float64 speed~%~%float64 CONST_ACCELERATION_UPPERBOUND=4.0~%float64 CONST_ACCELERATION_LOWERBOUND=-4.0~%~%# Targer acceleration in meter per second^2(m/sec^2)~%#~%# - Positive value means accel., negative value means deaccel.~%# - The value out of range [CONST_ACCELERATION_LOWERBOUND, CONST_ACCELERATION_LOWERBOUND] will be adjusted to CONST_ACCELERATION_LOWERBOUND/CONST_ACCELERATION_UPPERBOUND~%float64 acceleration~%~%float64 CONST_STEER_LEFTMOST=28.1~%float64 CONST_STEER_RIGHTMOST=-28.1~%~%# Target steering angle in unit of degree(deg)~%#~%# - The negative value indicates right steer(positive: left steer)~%# - The value out of range [CONST_STEER_RIGHTMOST, CONST_STEER_LEFTMOST] will be adjusted to CONST_STEER_LEFTMOST/CONST_STEER_RIGHTMOST~%float64 steer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenericVehicleControl)))
  "Returns full string definition for message of type 'GenericVehicleControl"
  (cl:format cl:nil "# You should set header.stamp when you publish this message to the correspoding topic~%#~%# - The header.stamp will be used for measuring timeout in the lower layer for fail-safe~%Header header~%~%# True for emergency stop~%# ~%# - DO NOT set this field unless the severe problem is detected(or expected)~%bool emergency_stop~%~%uint8 TYPE_GEAR_FORWARD=0~%uint8 TYPE_GEAR_NEUTRAL=1~%uint8 TYPE_GEAR_BACKWARD=2~%uint8 TYPE_GEAR_PARKING=3~%~%# One of the above TYPEGEAR* values~%#~%# - Values not in the above type will be ignored~%uint8 gear~%~%float64 CONST_SPEED_UPPERBOUND=5.5~%float64 CONST_SPEED_LOWERBOUND=-5.5~%~%# Target speed in unit of meter per second(m/sec)~%#~%# - Positive value means forward movement, negative value means reverse movement~%# - The value out of range [CONST_SPEED_LOWERBOUND, CONST_SPEED_LOWERBOUND] will be adjusted to CONST_SPEED_LOWERBOUND/CONST_SPEED_UPPERBOUND~%float64 speed~%~%float64 CONST_ACCELERATION_UPPERBOUND=4.0~%float64 CONST_ACCELERATION_LOWERBOUND=-4.0~%~%# Targer acceleration in meter per second^2(m/sec^2)~%#~%# - Positive value means accel., negative value means deaccel.~%# - The value out of range [CONST_ACCELERATION_LOWERBOUND, CONST_ACCELERATION_LOWERBOUND] will be adjusted to CONST_ACCELERATION_LOWERBOUND/CONST_ACCELERATION_UPPERBOUND~%float64 acceleration~%~%float64 CONST_STEER_LEFTMOST=28.1~%float64 CONST_STEER_RIGHTMOST=-28.1~%~%# Target steering angle in unit of degree(deg)~%#~%# - The negative value indicates right steer(positive: left steer)~%# - The value out of range [CONST_STEER_RIGHTMOST, CONST_STEER_LEFTMOST] will be adjusted to CONST_STEER_LEFTMOST/CONST_STEER_RIGHTMOST~%float64 steer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenericVehicleControl>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenericVehicleControl>))
  "Converts a ROS message object to a list"
  (cl:list 'GenericVehicleControl
    (cl:cons ':header (header msg))
    (cl:cons ':emergency_stop (emergency_stop msg))
    (cl:cons ':gear (gear msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':steer (steer msg))
))
