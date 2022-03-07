;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::MgeoLink)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'MgeoLink (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::MGEOLINK")
  (make-package "MORAI_MSGS::MGEOLINK"))

(in-package "ROS")
;;//! \htmlinclude MgeoLink.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*LINK_NONE*" (find-package "MORAI_MSGS::MGEOLINK"))
(shadow '*LINK_NONE* (find-package "MORAI_MSGS::MGEOLINK"))
(defconstant morai_msgs::MgeoLink::*LINK_NONE* 0)
(intern "*LINK_TOLLGATE_NORMAL*" (find-package "MORAI_MSGS::MGEOLINK"))
(shadow '*LINK_TOLLGATE_NORMAL* (find-package "MORAI_MSGS::MGEOLINK"))
(defconstant morai_msgs::MgeoLink::*LINK_TOLLGATE_NORMAL* 3)
(intern "*LINK_BUS_LANE*" (find-package "MORAI_MSGS::MGEOLINK"))
(shadow '*LINK_BUS_LANE* (find-package "MORAI_MSGS::MGEOLINK"))
(defconstant morai_msgs::MgeoLink::*LINK_BUS_LANE* 4)
(intern "*LINK_REVERSIBLE_LANE*" (find-package "MORAI_MSGS::MGEOLINK"))
(shadow '*LINK_REVERSIBLE_LANE* (find-package "MORAI_MSGS::MGEOLINK"))
(defconstant morai_msgs::MgeoLink::*LINK_REVERSIBLE_LANE* 5)
(intern "*LINK_REGULAR_LANE*" (find-package "MORAI_MSGS::MGEOLINK"))
(shadow '*LINK_REGULAR_LANE* (find-package "MORAI_MSGS::MGEOLINK"))
(defconstant morai_msgs::MgeoLink::*LINK_REGULAR_LANE* 6)
(intern "*CHANGE_NONE*" (find-package "MORAI_MSGS::MGEOLINK"))
(shadow '*CHANGE_NONE* (find-package "MORAI_MSGS::MGEOLINK"))
(defconstant morai_msgs::MgeoLink::*CHANGE_NONE* 0)
(intern "*CHANGE_LEFT*" (find-package "MORAI_MSGS::MGEOLINK"))
(shadow '*CHANGE_LEFT* (find-package "MORAI_MSGS::MGEOLINK"))
(defconstant morai_msgs::MgeoLink::*CHANGE_LEFT* 1)
(intern "*CHANGE_RIGHT*" (find-package "MORAI_MSGS::MGEOLINK"))
(shadow '*CHANGE_RIGHT* (find-package "MORAI_MSGS::MGEOLINK"))
(defconstant morai_msgs::MgeoLink::*CHANGE_RIGHT* 2)
(defclass morai_msgs::MgeoLink
  :super ros::object
  :slots (_link_id _cost _time_cost _lane_idx _left_link_id _right_link_id _to_node_id _from_node_id _link_type _length _speed _change_lane _change_link_id _waypoints ))

(defmethod morai_msgs::MgeoLink
  (:init
   (&key
    ((:link_id __link_id) "")
    ((:cost __cost) 0.0)
    ((:time_cost __time_cost) 0.0)
    ((:lane_idx __lane_idx) 0)
    ((:left_link_id __left_link_id) "")
    ((:right_link_id __right_link_id) "")
    ((:to_node_id __to_node_id) "")
    ((:from_node_id __from_node_id) "")
    ((:link_type __link_type) 0)
    ((:length __length) 0)
    ((:speed __speed) 0)
    ((:change_lane __change_lane) 0)
    ((:change_link_id __change_link_id) "")
    ((:waypoints __waypoints) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    )
   (send-super :init)
   (setq _link_id (string __link_id))
   (setq _cost (float __cost))
   (setq _time_cost (float __time_cost))
   (setq _lane_idx (round __lane_idx))
   (setq _left_link_id (string __left_link_id))
   (setq _right_link_id (string __right_link_id))
   (setq _to_node_id (string __to_node_id))
   (setq _from_node_id (string __from_node_id))
   (setq _link_type (round __link_type))
   (setq _length (round __length))
   (setq _speed (round __speed))
   (setq _change_lane (round __change_lane))
   (setq _change_link_id (string __change_link_id))
   (setq _waypoints __waypoints)
   self)
  (:link_id
   (&optional __link_id)
   (if __link_id (setq _link_id __link_id)) _link_id)
  (:cost
   (&optional __cost)
   (if __cost (setq _cost __cost)) _cost)
  (:time_cost
   (&optional __time_cost)
   (if __time_cost (setq _time_cost __time_cost)) _time_cost)
  (:lane_idx
   (&optional __lane_idx)
   (if __lane_idx (setq _lane_idx __lane_idx)) _lane_idx)
  (:left_link_id
   (&optional __left_link_id)
   (if __left_link_id (setq _left_link_id __left_link_id)) _left_link_id)
  (:right_link_id
   (&optional __right_link_id)
   (if __right_link_id (setq _right_link_id __right_link_id)) _right_link_id)
  (:to_node_id
   (&optional __to_node_id)
   (if __to_node_id (setq _to_node_id __to_node_id)) _to_node_id)
  (:from_node_id
   (&optional __from_node_id)
   (if __from_node_id (setq _from_node_id __from_node_id)) _from_node_id)
  (:link_type
   (&optional __link_type)
   (if __link_type (setq _link_type __link_type)) _link_type)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:change_lane
   (&optional __change_lane)
   (if __change_lane (setq _change_lane __change_lane)) _change_lane)
  (:change_link_id
   (&optional __change_link_id)
   (if __change_link_id (setq _change_link_id __change_link_id)) _change_link_id)
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:serialization-length
   ()
   (+
    ;; string _link_id
    4 (length _link_id)
    ;; float32 _cost
    4
    ;; float32 _time_cost
    4
    ;; uint32 _lane_idx
    4
    ;; string _left_link_id
    4 (length _left_link_id)
    ;; string _right_link_id
    4 (length _right_link_id)
    ;; string _to_node_id
    4 (length _to_node_id)
    ;; string _from_node_id
    4 (length _from_node_id)
    ;; int32 _link_type
    4
    ;; uint32 _length
    4
    ;; uint32 _speed
    4
    ;; int32 _change_lane
    4
    ;; string _change_link_id
    4 (length _change_link_id)
    ;; geometry_msgs/Pose[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _link_id
       (write-long (length _link_id) s) (princ _link_id s)
     ;; float32 _cost
       (sys::poke _cost (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _time_cost
       (sys::poke _time_cost (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _lane_idx
       (write-long _lane_idx s)
     ;; string _left_link_id
       (write-long (length _left_link_id) s) (princ _left_link_id s)
     ;; string _right_link_id
       (write-long (length _right_link_id) s) (princ _right_link_id s)
     ;; string _to_node_id
       (write-long (length _to_node_id) s) (princ _to_node_id s)
     ;; string _from_node_id
       (write-long (length _from_node_id) s) (princ _from_node_id s)
     ;; int32 _link_type
       (write-long _link_type s)
     ;; uint32 _length
       (write-long _length s)
     ;; uint32 _speed
       (write-long _speed s)
     ;; int32 _change_lane
       (write-long _change_lane s)
     ;; string _change_link_id
       (write-long (length _change_link_id) s) (princ _change_link_id s)
     ;; geometry_msgs/Pose[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _link_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _link_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _cost
     (setq _cost (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _time_cost
     (setq _time_cost (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _lane_idx
     (setq _lane_idx (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _left_link_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _left_link_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _right_link_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _right_link_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _to_node_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _to_node_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _from_node_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _from_node_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _link_type
     (setq _link_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _length
     (setq _length (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _speed
     (setq _speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _change_lane
     (setq _change_lane (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _change_link_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _change_link_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get morai_msgs::MgeoLink :md5sum-) "5259cb6df2dc66cea1017651f36dfbf5")
(setf (get morai_msgs::MgeoLink :datatype-) "morai_msgs/MgeoLink")
(setf (get morai_msgs::MgeoLink :definition-)
      "string link_id
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



(provide :morai_msgs/MgeoLink "5259cb6df2dc66cea1017651f36dfbf5")


