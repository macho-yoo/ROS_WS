; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude MoraiTimestamp.msg.html

(cl:defclass <MoraiTimestamp> (roslisp-msg-protocol:ros-message)
  ((msec
    :reader msec
    :initarg :msec
    :type cl:float
    :initform 0.0)
   (dateTime
    :reader dateTime
    :initarg :dateTime
    :type cl:string
    :initform ""))
)

(cl:defclass MoraiTimestamp (<MoraiTimestamp>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoraiTimestamp>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoraiTimestamp)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<MoraiTimestamp> is deprecated: use morai_msgs-msg:MoraiTimestamp instead.")))

(cl:ensure-generic-function 'msec-val :lambda-list '(m))
(cl:defmethod msec-val ((m <MoraiTimestamp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:msec-val is deprecated.  Use morai_msgs-msg:msec instead.")
  (msec m))

(cl:ensure-generic-function 'dateTime-val :lambda-list '(m))
(cl:defmethod dateTime-val ((m <MoraiTimestamp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:dateTime-val is deprecated.  Use morai_msgs-msg:dateTime instead.")
  (dateTime m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoraiTimestamp>) ostream)
  "Serializes a message object of type '<MoraiTimestamp>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'msec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dateTime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dateTime))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoraiTimestamp>) istream)
  "Deserializes a message object of type '<MoraiTimestamp>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'msec) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dateTime) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dateTime) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoraiTimestamp>)))
  "Returns string type for a message object of type '<MoraiTimestamp>"
  "morai_msgs/MoraiTimestamp")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiTimestamp)))
  "Returns string type for a message object of type 'MoraiTimestamp"
  "morai_msgs/MoraiTimestamp")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoraiTimestamp>)))
  "Returns md5sum for a message object of type '<MoraiTimestamp>"
  "9c518394d21e3fbb8021d76f4d57e5d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoraiTimestamp)))
  "Returns md5sum for a message object of type 'MoraiTimestamp"
  "9c518394d21e3fbb8021d76f4d57e5d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoraiTimestamp>)))
  "Returns full string definition for message of type '<MoraiTimestamp>"
  (cl:format cl:nil "float64 msec~%string dateTime~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoraiTimestamp)))
  "Returns full string definition for message of type 'MoraiTimestamp"
  (cl:format cl:nil "float64 msec~%string dateTime~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoraiTimestamp>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'dateTime))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoraiTimestamp>))
  "Converts a ROS message object to a list"
  (cl:list 'MoraiTimestamp
    (cl:cons ':msec (msec msg))
    (cl:cons ':dateTime (dateTime msg))
))
