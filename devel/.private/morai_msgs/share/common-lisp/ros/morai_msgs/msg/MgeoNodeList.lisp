; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude MgeoNodeList.msg.html

(cl:defclass <MgeoNodeList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (node_list
    :reader node_list
    :initarg :node_list
    :type (cl:vector morai_msgs-msg:MgeoNode)
   :initform (cl:make-array 0 :element-type 'morai_msgs-msg:MgeoNode :initial-element (cl:make-instance 'morai_msgs-msg:MgeoNode))))
)

(cl:defclass MgeoNodeList (<MgeoNodeList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MgeoNodeList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MgeoNodeList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<MgeoNodeList> is deprecated: use morai_msgs-msg:MgeoNodeList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MgeoNodeList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:header-val is deprecated.  Use morai_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'node_list-val :lambda-list '(m))
(cl:defmethod node_list-val ((m <MgeoNodeList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:node_list-val is deprecated.  Use morai_msgs-msg:node_list instead.")
  (node_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MgeoNodeList>) ostream)
  "Serializes a message object of type '<MgeoNodeList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'node_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'node_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MgeoNodeList>) istream)
  "Deserializes a message object of type '<MgeoNodeList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'node_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'node_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'morai_msgs-msg:MgeoNode))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MgeoNodeList>)))
  "Returns string type for a message object of type '<MgeoNodeList>"
  "morai_msgs/MgeoNodeList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MgeoNodeList)))
  "Returns string type for a message object of type 'MgeoNodeList"
  "morai_msgs/MgeoNodeList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MgeoNodeList>)))
  "Returns md5sum for a message object of type '<MgeoNodeList>"
  "3ae9b44b45a36f86376fd00317de8521")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MgeoNodeList)))
  "Returns md5sum for a message object of type 'MgeoNodeList"
  "3ae9b44b45a36f86376fd00317de8521")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MgeoNodeList>)))
  "Returns full string definition for message of type '<MgeoNodeList>"
  (cl:format cl:nil "Header header~%~%MgeoNode[] node_list~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: morai_msgs/MgeoNode~%string node_id~%float32 cost~%float32 time_cost~%~%int32 node_type #if the node type is -1, unuse this data~%~%string[] to_link_id~%string[] from_link_id~%~%geometry_msgs/Pose node~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MgeoNodeList)))
  "Returns full string definition for message of type 'MgeoNodeList"
  (cl:format cl:nil "Header header~%~%MgeoNode[] node_list~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: morai_msgs/MgeoNode~%string node_id~%float32 cost~%float32 time_cost~%~%int32 node_type #if the node type is -1, unuse this data~%~%string[] to_link_id~%string[] from_link_id~%~%geometry_msgs/Pose node~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MgeoNodeList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'node_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MgeoNodeList>))
  "Converts a ROS message object to a list"
  (cl:list 'MgeoNodeList
    (cl:cons ':header (header msg))
    (cl:cons ':node_list (node_list msg))
))
