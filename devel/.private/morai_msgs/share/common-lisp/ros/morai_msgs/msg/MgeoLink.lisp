; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude MgeoLink.msg.html

(cl:defclass <MgeoLink> (roslisp-msg-protocol:ros-message)
  ((link_id
    :reader link_id
    :initarg :link_id
    :type cl:string
    :initform "")
   (cost
    :reader cost
    :initarg :cost
    :type cl:float
    :initform 0.0)
   (time_cost
    :reader time_cost
    :initarg :time_cost
    :type cl:float
    :initform 0.0)
   (lane_idx
    :reader lane_idx
    :initarg :lane_idx
    :type cl:integer
    :initform 0)
   (left_link_id
    :reader left_link_id
    :initarg :left_link_id
    :type cl:string
    :initform "")
   (right_link_id
    :reader right_link_id
    :initarg :right_link_id
    :type cl:string
    :initform "")
   (to_node_id
    :reader to_node_id
    :initarg :to_node_id
    :type cl:string
    :initform "")
   (from_node_id
    :reader from_node_id
    :initarg :from_node_id
    :type cl:string
    :initform "")
   (link_type
    :reader link_type
    :initarg :link_type
    :type cl:integer
    :initform 0)
   (length
    :reader length
    :initarg :length
    :type cl:integer
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:integer
    :initform 0)
   (change_lane
    :reader change_lane
    :initarg :change_lane
    :type cl:integer
    :initform 0)
   (change_link_id
    :reader change_link_id
    :initarg :change_link_id
    :type cl:string
    :initform "")
   (waypoints
    :reader waypoints
    :initarg :waypoints
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose))))
)

(cl:defclass MgeoLink (<MgeoLink>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MgeoLink>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MgeoLink)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<MgeoLink> is deprecated: use morai_msgs-msg:MgeoLink instead.")))

(cl:ensure-generic-function 'link_id-val :lambda-list '(m))
(cl:defmethod link_id-val ((m <MgeoLink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:link_id-val is deprecated.  Use morai_msgs-msg:link_id instead.")
  (link_id m))

(cl:ensure-generic-function 'cost-val :lambda-list '(m))
(cl:defmethod cost-val ((m <MgeoLink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:cost-val is deprecated.  Use morai_msgs-msg:cost instead.")
  (cost m))

(cl:ensure-generic-function 'time_cost-val :lambda-list '(m))
(cl:defmethod time_cost-val ((m <MgeoLink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:time_cost-val is deprecated.  Use morai_msgs-msg:time_cost instead.")
  (time_cost m))

(cl:ensure-generic-function 'lane_idx-val :lambda-list '(m))
(cl:defmethod lane_idx-val ((m <MgeoLink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:lane_idx-val is deprecated.  Use morai_msgs-msg:lane_idx instead.")
  (lane_idx m))

(cl:ensure-generic-function 'left_link_id-val :lambda-list '(m))
(cl:defmethod left_link_id-val ((m <MgeoLink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:left_link_id-val is deprecated.  Use morai_msgs-msg:left_link_id instead.")
  (left_link_id m))

(cl:ensure-generic-function 'right_link_id-val :lambda-list '(m))
(cl:defmethod right_link_id-val ((m <MgeoLink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:right_link_id-val is deprecated.  Use morai_msgs-msg:right_link_id instead.")
  (right_link_id m))

(cl:ensure-generic-function 'to_node_id-val :lambda-list '(m))
(cl:defmethod to_node_id-val ((m <MgeoLink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:to_node_id-val is deprecated.  Use morai_msgs-msg:to_node_id instead.")
  (to_node_id m))

(cl:ensure-generic-function 'from_node_id-val :lambda-list '(m))
(cl:defmethod from_node_id-val ((m <MgeoLink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:from_node_id-val is deprecated.  Use morai_msgs-msg:from_node_id instead.")
  (from_node_id m))

(cl:ensure-generic-function 'link_type-val :lambda-list '(m))
(cl:defmethod link_type-val ((m <MgeoLink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:link_type-val is deprecated.  Use morai_msgs-msg:link_type instead.")
  (link_type m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <MgeoLink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:length-val is deprecated.  Use morai_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <MgeoLink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:speed-val is deprecated.  Use morai_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'change_lane-val :lambda-list '(m))
(cl:defmethod change_lane-val ((m <MgeoLink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:change_lane-val is deprecated.  Use morai_msgs-msg:change_lane instead.")
  (change_lane m))

(cl:ensure-generic-function 'change_link_id-val :lambda-list '(m))
(cl:defmethod change_link_id-val ((m <MgeoLink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:change_link_id-val is deprecated.  Use morai_msgs-msg:change_link_id instead.")
  (change_link_id m))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <MgeoLink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:waypoints-val is deprecated.  Use morai_msgs-msg:waypoints instead.")
  (waypoints m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MgeoLink>)))
    "Constants for message type '<MgeoLink>"
  '((:LINK_NONE . 0)
    (:LINK_TOLLGATE_NORMAL . 3)
    (:LINK_BUS_LANE . 4)
    (:LINK_REVERSIBLE_LANE . 5)
    (:LINK_REGULAR_LANE . 6)
    (:CHANGE_NONE . 0)
    (:CHANGE_LEFT . 1)
    (:CHANGE_RIGHT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MgeoLink)))
    "Constants for message type 'MgeoLink"
  '((:LINK_NONE . 0)
    (:LINK_TOLLGATE_NORMAL . 3)
    (:LINK_BUS_LANE . 4)
    (:LINK_REVERSIBLE_LANE . 5)
    (:LINK_REGULAR_LANE . 6)
    (:CHANGE_NONE . 0)
    (:CHANGE_LEFT . 1)
    (:CHANGE_RIGHT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MgeoLink>) ostream)
  "Serializes a message object of type '<MgeoLink>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'link_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'link_id))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cost))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time_cost))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_idx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane_idx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lane_idx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lane_idx)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'left_link_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'left_link_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'right_link_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'right_link_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'to_node_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'to_node_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'from_node_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'from_node_id))
  (cl:let* ((signed (cl:slot-value msg 'link_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'speed)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'change_lane)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'change_link_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'change_link_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waypoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MgeoLink>) istream)
  "Deserializes a message object of type '<MgeoLink>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'link_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'link_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cost) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_cost) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_idx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane_idx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lane_idx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lane_idx)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_link_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'left_link_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right_link_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'right_link_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'to_node_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'to_node_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'from_node_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'from_node_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'link_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'change_lane) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'change_link_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'change_link_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MgeoLink>)))
  "Returns string type for a message object of type '<MgeoLink>"
  "morai_msgs/MgeoLink")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MgeoLink)))
  "Returns string type for a message object of type 'MgeoLink"
  "morai_msgs/MgeoLink")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MgeoLink>)))
  "Returns md5sum for a message object of type '<MgeoLink>"
  "5259cb6df2dc66cea1017651f36dfbf5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MgeoLink)))
  "Returns md5sum for a message object of type 'MgeoLink"
  "5259cb6df2dc66cea1017651f36dfbf5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MgeoLink>)))
  "Returns full string definition for message of type '<MgeoLink>"
  (cl:format cl:nil "string link_id~%float32 cost~%float32 time_cost~%~%uint32 lane_idx~%string left_link_id~%string right_link_id~%~%string to_node_id~%string from_node_id~%~%int32 link_type~%uint32 length~%uint32 speed~%~%# 0: not change, 1: left, 2: right~%int32 change_lane~%# change target link id~%string change_link_id~%~%# link_type enum~%int32 LINK_NONE=0~%int32 LINK_TOLLGATE_NORMAL=3~%int32 LINK_BUS_LANE=4~%int32 LINK_REVERSIBLE_LANE=5~%int32 LINK_REGULAR_LANE=6~%~%# change_lane enum~%int32 CHANGE_NONE=0~%int32 CHANGE_LEFT=1~%int32 CHANGE_RIGHT=2~%~%geometry_msgs/Pose[] waypoints~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MgeoLink)))
  "Returns full string definition for message of type 'MgeoLink"
  (cl:format cl:nil "string link_id~%float32 cost~%float32 time_cost~%~%uint32 lane_idx~%string left_link_id~%string right_link_id~%~%string to_node_id~%string from_node_id~%~%int32 link_type~%uint32 length~%uint32 speed~%~%# 0: not change, 1: left, 2: right~%int32 change_lane~%# change target link id~%string change_link_id~%~%# link_type enum~%int32 LINK_NONE=0~%int32 LINK_TOLLGATE_NORMAL=3~%int32 LINK_BUS_LANE=4~%int32 LINK_REVERSIBLE_LANE=5~%int32 LINK_REGULAR_LANE=6~%~%# change_lane enum~%int32 CHANGE_NONE=0~%int32 CHANGE_LEFT=1~%int32 CHANGE_RIGHT=2~%~%geometry_msgs/Pose[] waypoints~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MgeoLink>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'link_id))
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'left_link_id))
     4 (cl:length (cl:slot-value msg 'right_link_id))
     4 (cl:length (cl:slot-value msg 'to_node_id))
     4 (cl:length (cl:slot-value msg 'from_node_id))
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'change_link_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MgeoLink>))
  "Converts a ROS message object to a list"
  (cl:list 'MgeoLink
    (cl:cons ':link_id (link_id msg))
    (cl:cons ':cost (cost msg))
    (cl:cons ':time_cost (time_cost msg))
    (cl:cons ':lane_idx (lane_idx msg))
    (cl:cons ':left_link_id (left_link_id msg))
    (cl:cons ':right_link_id (right_link_id msg))
    (cl:cons ':to_node_id (to_node_id msg))
    (cl:cons ':from_node_id (from_node_id msg))
    (cl:cons ':link_type (link_type msg))
    (cl:cons ':length (length msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':change_lane (change_lane msg))
    (cl:cons ':change_link_id (change_link_id msg))
    (cl:cons ':waypoints (waypoints msg))
))
