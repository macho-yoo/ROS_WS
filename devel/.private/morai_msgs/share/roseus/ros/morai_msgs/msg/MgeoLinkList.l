;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::MgeoLinkList)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'MgeoLinkList (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::MGEOLINKLIST")
  (make-package "MORAI_MSGS::MGEOLINKLIST"))

(in-package "ROS")
;;//! \htmlinclude MgeoLinkList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass morai_msgs::MgeoLinkList
  :super ros::object
  :slots (_header _link_list ))

(defmethod morai_msgs::MgeoLinkList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:link_list __link_list) (let (r) (dotimes (i 0) (push (instance morai_msgs::MgeoLink :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _link_list __link_list)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:link_list
   (&rest __link_list)
   (if (keywordp (car __link_list))
       (send* _link_list __link_list)
     (progn
       (if __link_list (setq _link_list (car __link_list)))
       _link_list)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; morai_msgs/MgeoLink[] _link_list
    (apply #'+ (send-all _link_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; morai_msgs/MgeoLink[] _link_list
     (write-long (length _link_list) s)
     (dolist (elem _link_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; morai_msgs/MgeoLink[] _link_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _link_list (let (r) (dotimes (i n) (push (instance morai_msgs::MgeoLink :init) r)) r))
     (dolist (elem- _link_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get morai_msgs::MgeoLinkList :md5sum-) "a00a34e18d90273a0b75ccb7cc3710dc")
(setf (get morai_msgs::MgeoLinkList :datatype-) "morai_msgs/MgeoLinkList")
(setf (get morai_msgs::MgeoLinkList :definition-)
      "Header header

MgeoLink[] link_list

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
MSG: morai_msgs/MgeoLink
string link_id
float32 cost
float32 time_cost

uint32 lane_idx
string left_link_id
string right_link_id

string to_node_id
string from_node_id

int32 link_type
uint32 length
uint32 speed

# 0: not change, 1: left, 2: right
int32 change_lane
# change target link id
string change_link_id

# link_type enum
int32 LINK_NONE=0
int32 LINK_TOLLGATE_NORMAL=3
int32 LINK_BUS_LANE=4
int32 LINK_REVERSIBLE_LANE=5
int32 LINK_REGULAR_LANE=6

# change_lane enum
int32 CHANGE_NONE=0
int32 CHANGE_LEFT=1
int32 CHANGE_RIGHT=2

geometry_msgs/Pose[] waypoints

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



(provide :morai_msgs/MgeoLinkList "a00a34e18d90273a0b75ccb7cc3710dc")


