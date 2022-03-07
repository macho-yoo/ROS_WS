;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::MgeoNode)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'MgeoNode (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::MGEONODE")
  (make-package "MORAI_MSGS::MGEONODE"))

(in-package "ROS")
;;//! \htmlinclude MgeoNode.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass morai_msgs::MgeoNode
  :super ros::object
  :slots (_node_id _cost _time_cost _node_type _to_link_id _from_link_id _node ))

(defmethod morai_msgs::MgeoNode
  (:init
   (&key
    ((:node_id __node_id) "")
    ((:cost __cost) 0.0)
    ((:time_cost __time_cost) 0.0)
    ((:node_type __node_type) 0)
    ((:to_link_id __to_link_id) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:from_link_id __from_link_id) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:node __node) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _node_id (string __node_id))
   (setq _cost (float __cost))
   (setq _time_cost (float __time_cost))
   (setq _node_type (round __node_type))
   (setq _to_link_id __to_link_id)
   (setq _from_link_id __from_link_id)
   (setq _node __node)
   self)
  (:node_id
   (&optional __node_id)
   (if __node_id (setq _node_id __node_id)) _node_id)
  (:cost
   (&optional __cost)
   (if __cost (setq _cost __cost)) _cost)
  (:time_cost
   (&optional __time_cost)
   (if __time_cost (setq _time_cost __time_cost)) _time_cost)
  (:node_type
   (&optional __node_type)
   (if __node_type (setq _node_type __node_type)) _node_type)
  (:to_link_id
   (&optional __to_link_id)
   (if __to_link_id (setq _to_link_id __to_link_id)) _to_link_id)
  (:from_link_id
   (&optional __from_link_id)
   (if __from_link_id (setq _from_link_id __from_link_id)) _from_link_id)
  (:node
   (&rest __node)
   (if (keywordp (car __node))
       (send* _node __node)
     (progn
       (if __node (setq _node (car __node)))
       _node)))
  (:serialization-length
   ()
   (+
    ;; string _node_id
    4 (length _node_id)
    ;; float32 _cost
    4
    ;; float32 _time_cost
    4
    ;; int32 _node_type
    4
    ;; string[] _to_link_id
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _to_link_id)) 4
    ;; string[] _from_link_id
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _from_link_id)) 4
    ;; geometry_msgs/Pose _node
    (send _node :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _node_id
       (write-long (length _node_id) s) (princ _node_id s)
     ;; float32 _cost
       (sys::poke _cost (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _time_cost
       (sys::poke _time_cost (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _node_type
       (write-long _node_type s)
     ;; string[] _to_link_id
     (write-long (length _to_link_id) s)
     (dolist (elem _to_link_id)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _from_link_id
     (write-long (length _from_link_id) s)
     (dolist (elem _from_link_id)
       (write-long (length elem) s) (princ elem s)
       )
     ;; geometry_msgs/Pose _node
       (send _node :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _node_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _node_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _cost
     (setq _cost (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _time_cost
     (setq _time_cost (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _node_type
     (setq _node_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string[] _to_link_id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _to_link_id (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _to_link_id i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _from_link_id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _from_link_id (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _from_link_id i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; geometry_msgs/Pose _node
     (send _node :deserialize buf ptr-) (incf ptr- (send _node :serialization-length))
   ;;
   self)
  )

(setf (get morai_msgs::MgeoNode :md5sum-) "e260c05524b8fac9ccdd7f9ed4a7cd47")
(setf (get morai_msgs::MgeoNode :datatype-) "morai_msgs/MgeoNode")
(setf (get morai_msgs::MgeoNode :definition-)
      "string node_id
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



(provide :morai_msgs/MgeoNode "e260c05524b8fac9ccdd7f9ed4a7cd47")


