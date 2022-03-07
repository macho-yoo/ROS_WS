;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::Mgeo)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'Mgeo (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::MGEO")
  (make-package "MORAI_MSGS::MGEO"))

(in-package "ROS")
;;//! \htmlinclude Mgeo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass morai_msgs::Mgeo
  :super ros::object
  :slots (_map_name _local_offset _lane_change_link_include _node_list _link_list ))

(defmethod morai_msgs::Mgeo
  (:init
   (&key
    ((:map_name __map_name) "")
    ((:local_offset __local_offset) (instance geometry_msgs::Pose :init))
    ((:lane_change_link_include __lane_change_link_include) nil)
    ((:node_list __node_list) (instance morai_msgs::MgeoNodeList :init))
    ((:link_list __link_list) (instance morai_msgs::MgeoLinkList :init))
    )
   (send-super :init)
   (setq _map_name (string __map_name))
   (setq _local_offset __local_offset)
   (setq _lane_change_link_include __lane_change_link_include)
   (setq _node_list __node_list)
   (setq _link_list __link_list)
   self)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:local_offset
   (&rest __local_offset)
   (if (keywordp (car __local_offset))
       (send* _local_offset __local_offset)
     (progn
       (if __local_offset (setq _local_offset (car __local_offset)))
       _local_offset)))
  (:lane_change_link_include
   (&optional __lane_change_link_include)
   (if __lane_change_link_include (setq _lane_change_link_include __lane_change_link_include)) _lane_change_link_include)
  (:node_list
   (&rest __node_list)
   (if (keywordp (car __node_list))
       (send* _node_list __node_list)
     (progn
       (if __node_list (setq _node_list (car __node_list)))
       _node_list)))
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
    ;; string _map_name
    4 (length _map_name)
    ;; geometry_msgs/Pose _local_offset
    (send _local_offset :serialization-length)
    ;; bool _lane_change_link_include
    1
    ;; morai_msgs/MgeoNodeList _node_list
    (send _node_list :serialization-length)
    ;; morai_msgs/MgeoLinkList _link_list
    (send _link_list :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; geometry_msgs/Pose _local_offset
       (send _local_offset :serialize s)
     ;; bool _lane_change_link_include
       (if _lane_change_link_include (write-byte -1 s) (write-byte 0 s))
     ;; morai_msgs/MgeoNodeList _node_list
       (send _node_list :serialize s)
     ;; morai_msgs/MgeoLinkList _link_list
       (send _link_list :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _local_offset
     (send _local_offset :deserialize buf ptr-) (incf ptr- (send _local_offset :serialization-length))
   ;; bool _lane_change_link_include
     (setq _lane_change_link_include (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; morai_msgs/MgeoNodeList _node_list
     (send _node_list :deserialize buf ptr-) (incf ptr- (send _node_list :serialization-length))
   ;; morai_msgs/MgeoLinkList _link_list
     (send _link_list :deserialize buf ptr-) (incf ptr- (send _link_list :serialization-length))
   ;;
   self)
  )

(setf (get morai_msgs::Mgeo :md5sum-) "ffa290ab15496480ebcd89bbc9fb80e1")
(setf (get morai_msgs::Mgeo :datatype-) "morai_msgs/Mgeo")
(setf (get morai_msgs::Mgeo :definition-)
      "string map_name

geometry_msgs/Pose local_offset
bool lane_change_link_include

MgeoNodeList node_list
MgeoLinkList link_list

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

================================================================================
MSG: morai_msgs/MgeoNodeList
Header header

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
MSG: morai_msgs/MgeoLinkList
Header header

MgeoLink[] link_list

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

")



(provide :morai_msgs/Mgeo "ffa290ab15496480ebcd89bbc9fb80e1")


