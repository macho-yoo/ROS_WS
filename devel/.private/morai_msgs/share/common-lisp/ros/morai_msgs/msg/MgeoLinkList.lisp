; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude MgeoLinkList.msg.html

(cl:defclass <MgeoLinkList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (link_list
    :reader link_list
    :initarg :link_list
    :type (cl:vector morai_msgs-msg:MgeoLink)
   :initform (cl:make-array 0 :element-type 'morai_msgs-msg:MgeoLink :initial-element (cl:make-instance 'morai_msgs-msg:MgeoLink))))
)

(cl:defclass MgeoLinkList (<MgeoLinkList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MgeoLinkList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MgeoLinkList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<MgeoLinkList> is deprecated: use morai_msgs-msg:MgeoLinkList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MgeoLinkList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:header-val is deprecated.  Use morai_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'link_list-val :lambda-list '(m))
(cl:defmethod link_list-val ((m <MgeoLinkList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:link_list-val is deprecated.  Use morai_msgs-msg:link_list instead.")
  (link_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MgeoLinkList>) ostream)
  "Serializes a message object of type '<MgeoLinkList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'link_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'link_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MgeoLinkList>) istream)
  "Deserializes a message object of type '<MgeoLinkList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'link_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'link_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'morai_msgs-msg:MgeoLink))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MgeoLinkList>)))
  "Returns string type for a message object of type '<MgeoLinkList>"
  "morai_msgs/MgeoLinkList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MgeoLinkList)))
  "Returns string type for a message object of type 'MgeoLinkList"
  "morai_msgs/MgeoLinkList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MgeoLinkList>)))
  "Returns md5sum for a message object of type '<MgeoLinkList>"
  "a00a34e18d90273a0b75ccb7cc3710dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MgeoLinkList)))
  "Returns md5sum for a message object of type 'MgeoLinkList"
  "a00a34e18d90273a0b75ccb7cc3710dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MgeoLinkList>)))
  "Returns full string definition for message of type '<MgeoLinkList>"
  (cl:format cl:nil "Header header~%~%MgeoLink[] link_list~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: morai_msgs/MgeoLink~%string link_id~%float32 cost~%float32 time_cost~%~%uint32 lane_idx~%string left_link_id~%string right_link_id~%~%string to_node_id~%string from_node_id~%~%int32 link_type~%uint32 length~%uint32 speed~%~%# 0: not change, 1: left, 2: right~%int32 change_lane~%# change target link id~%string change_link_id~%~%# link_type enum~%int32 LINK_NONE=0~%int32 LINK_TOLLGATE_NORMAL=3~%int32 LINK_BUS_LANE=4~%int32 LINK_REVERSIBLE_LANE=5~%int32 LINK_REGULAR_LANE=6~%~%# change_lane enum~%int32 CHANGE_NONE=0~%int32 CHANGE_LEFT=1~%int32 CHANGE_RIGHT=2~%~%geometry_msgs/Pose[] waypoints~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MgeoLinkList)))
  "Returns full string definition for message of type 'MgeoLinkList"
  (cl:format cl:nil "Header header~%~%MgeoLink[] link_list~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: morai_msgs/MgeoLink~%string link_id~%float32 cost~%float32 time_cost~%~%uint32 lane_idx~%string left_link_id~%string right_link_id~%~%string to_node_id~%string from_node_id~%~%int32 link_type~%uint32 length~%uint32 speed~%~%# 0: not change, 1: left, 2: right~%int32 change_lane~%# change target link id~%string change_link_id~%~%# link_type enum~%int32 LINK_NONE=0~%int32 LINK_TOLLGATE_NORMAL=3~%int32 LINK_BUS_LANE=4~%int32 LINK_REVERSIBLE_LANE=5~%int32 LINK_REGULAR_LANE=6~%~%# change_lane enum~%int32 CHANGE_NONE=0~%int32 CHANGE_LEFT=1~%int32 CHANGE_RIGHT=2~%~%geometry_msgs/Pose[] waypoints~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MgeoLinkList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'link_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MgeoLinkList>))
  "Converts a ROS message object to a list"
  (cl:list 'MgeoLinkList
    (cl:cons ':header (header msg))
    (cl:cons ':link_list (link_list msg))
))
