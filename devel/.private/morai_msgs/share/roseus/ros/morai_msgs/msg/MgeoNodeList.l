;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::MgeoNodeList)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'MgeoNodeList (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::MGEONODELIST")
  (make-package "MORAI_MSGS::MGEONODELIST"))

(in-package "ROS")
;;//! \htmlinclude MgeoNodeList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass morai_msgs::MgeoNodeList
  :super ros::object
  :slots (_header _node_list ))

(defmethod morai_msgs::MgeoNodeList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:node_list __node_list) (let (r) (dotimes (i 0) (push (instance morai_msgs::MgeoNode :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _node_list __node_list)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:node_list
   (&rest __node_list)
   (if (keywordp (car __node_list))
       (send* _node_list __node_list)
     (progn
       (if __node_list (setq _node_list (car __node_list)))
       _node_list)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; morai_msgs/MgeoNode[] _node_list
    (apply #'+ (send-all _node_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; morai_msgs/MgeoNode[] _node_list
     (write-long (length _node_list) s)
     (dolist (elem _node_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; morai_msgs/MgeoNode[] _node_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _node_list (let (r) (dotimes (i n) (push (instance morai_msgs::MgeoNode :init) r)) r))
     (dolist (elem- _node_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get morai_msgs::MgeoNodeList :md5sum-) "3ae9b44b45a36f86376fd00317de8521")
(setf (get morai_msgs::MgeoNodeList :datatype-) "morai_msgs/MgeoNodeList")
(setf (get morai_msgs::MgeoNodeList :definition-)
      "Header header

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

")



(provide :morai_msgs/MgeoNodeList "3ae9b44b45a36f86376fd00317de8521")


