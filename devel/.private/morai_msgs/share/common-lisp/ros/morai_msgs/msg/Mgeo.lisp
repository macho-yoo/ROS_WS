; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude Mgeo.msg.html

(cl:defclass <Mgeo> (roslisp-msg-protocol:ros-message)
  ((map_name
    :reader map_name
    :initarg :map_name
    :type cl:string
    :initform "")
   (local_offset
    :reader local_offset
    :initarg :local_offset
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (lane_change_link_include
    :reader lane_change_link_include
    :initarg :lane_change_link_include
    :type cl:boolean
    :initform cl:nil)
   (node_list
    :reader node_list
    :initarg :node_list
    :type morai_msgs-msg:MgeoNodeList
    :initform (cl:make-instance 'morai_msgs-msg:MgeoNodeList))
   (link_list
    :reader link_list
    :initarg :link_list
    :type morai_msgs-msg:MgeoLinkList
    :initform (cl:make-instance 'morai_msgs-msg:MgeoLinkList)))
)

(cl:defclass Mgeo (<Mgeo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Mgeo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Mgeo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<Mgeo> is deprecated: use morai_msgs-msg:Mgeo instead.")))

(cl:ensure-generic-function 'map_name-val :lambda-list '(m))
(cl:defmethod map_name-val ((m <Mgeo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:map_name-val is deprecated.  Use morai_msgs-msg:map_name instead.")
  (map_name m))

(cl:ensure-generic-function 'local_offset-val :lambda-list '(m))
(cl:defmethod local_offset-val ((m <Mgeo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:local_offset-val is deprecated.  Use morai_msgs-msg:local_offset instead.")
  (local_offset m))

(cl:ensure-generic-function 'lane_change_link_include-val :lambda-list '(m))
(cl:defmethod lane_change_link_include-val ((m <Mgeo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:lane_change_link_include-val is deprecated.  Use morai_msgs-msg:lane_change_link_include instead.")
  (lane_change_link_include m))

(cl:ensure-generic-function 'node_list-val :lambda-list '(m))
(cl:defmethod node_list-val ((m <Mgeo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:node_list-val is deprecated.  Use morai_msgs-msg:node_list instead.")
  (node_list m))

(cl:ensure-generic-function 'link_list-val :lambda-list '(m))
(cl:defmethod link_list-val ((m <Mgeo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:link_list-val is deprecated.  Use morai_msgs-msg:link_list instead.")
  (link_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Mgeo>) ostream)
  "Serializes a message object of type '<Mgeo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'local_offset) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'lane_change_link_include) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'node_list) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'link_list) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Mgeo>) istream)
  "Deserializes a message object of type '<Mgeo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'local_offset) istream)
    (cl:setf (cl:slot-value msg 'lane_change_link_include) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'node_list) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'link_list) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Mgeo>)))
  "Returns string type for a message object of type '<Mgeo>"
  "morai_msgs/Mgeo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mgeo)))
  "Returns string type for a message object of type 'Mgeo"
  "morai_msgs/Mgeo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Mgeo>)))
  "Returns md5sum for a message object of type '<Mgeo>"
  "ffa290ab15496480ebcd89bbc9fb80e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Mgeo)))
  "Returns md5sum for a message object of type 'Mgeo"
  "ffa290ab15496480ebcd89bbc9fb80e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Mgeo>)))
  "Returns full string definition for message of type '<Mgeo>"
  (cl:format cl:nil "string map_name~%~%geometry_msgs/Pose local_offset~%bool lane_change_link_include~%~%MgeoNodeList node_list~%MgeoLinkList link_list~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: morai_msgs/MgeoNodeList~%Header header~%~%MgeoNode[] node_list~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: morai_msgs/MgeoNode~%string node_id~%float32 cost~%float32 time_cost~%~%int32 node_type #if the node type is -1, unuse this data~%~%string[] to_link_id~%string[] from_link_id~%~%geometry_msgs/Pose node~%~%================================================================================~%MSG: morai_msgs/MgeoLinkList~%Header header~%~%MgeoLink[] link_list~%~%================================================================================~%MSG: morai_msgs/MgeoLink~%string link_id~%float32 cost~%float32 time_cost~%~%uint32 lane_idx~%string left_link_id~%string right_link_id~%~%string to_node_id~%string from_node_id~%~%int32 link_type~%uint32 length~%uint32 speed~%~%# 0: not change, 1: left, 2: right~%int32 change_lane~%# change target link id~%string change_link_id~%~%# link_type enum~%int32 LINK_NONE=0~%int32 LINK_TOLLGATE_NORMAL=3~%int32 LINK_BUS_LANE=4~%int32 LINK_REVERSIBLE_LANE=5~%int32 LINK_REGULAR_LANE=6~%~%# change_lane enum~%int32 CHANGE_NONE=0~%int32 CHANGE_LEFT=1~%int32 CHANGE_RIGHT=2~%~%geometry_msgs/Pose[] waypoints~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Mgeo)))
  "Returns full string definition for message of type 'Mgeo"
  (cl:format cl:nil "string map_name~%~%geometry_msgs/Pose local_offset~%bool lane_change_link_include~%~%MgeoNodeList node_list~%MgeoLinkList link_list~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: morai_msgs/MgeoNodeList~%Header header~%~%MgeoNode[] node_list~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: morai_msgs/MgeoNode~%string node_id~%float32 cost~%float32 time_cost~%~%int32 node_type #if the node type is -1, unuse this data~%~%string[] to_link_id~%string[] from_link_id~%~%geometry_msgs/Pose node~%~%================================================================================~%MSG: morai_msgs/MgeoLinkList~%Header header~%~%MgeoLink[] link_list~%~%================================================================================~%MSG: morai_msgs/MgeoLink~%string link_id~%float32 cost~%float32 time_cost~%~%uint32 lane_idx~%string left_link_id~%string right_link_id~%~%string to_node_id~%string from_node_id~%~%int32 link_type~%uint32 length~%uint32 speed~%~%# 0: not change, 1: left, 2: right~%int32 change_lane~%# change target link id~%string change_link_id~%~%# link_type enum~%int32 LINK_NONE=0~%int32 LINK_TOLLGATE_NORMAL=3~%int32 LINK_BUS_LANE=4~%int32 LINK_REVERSIBLE_LANE=5~%int32 LINK_REGULAR_LANE=6~%~%# change_lane enum~%int32 CHANGE_NONE=0~%int32 CHANGE_LEFT=1~%int32 CHANGE_RIGHT=2~%~%geometry_msgs/Pose[] waypoints~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Mgeo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'local_offset))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'node_list))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'link_list))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Mgeo>))
  "Converts a ROS message object to a list"
  (cl:list 'Mgeo
    (cl:cons ':map_name (map_name msg))
    (cl:cons ':local_offset (local_offset msg))
    (cl:cons ':lane_change_link_include (lane_change_link_include msg))
    (cl:cons ':node_list (node_list msg))
    (cl:cons ':link_list (link_list msg))
))
