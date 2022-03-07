;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::CollisionData)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'CollisionData (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::COLLISIONDATA")
  (make-package "MORAI_MSGS::COLLISIONDATA"))

(in-package "ROS")
;;//! \htmlinclude CollisionData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass morai_msgs::CollisionData
  :super ros::object
  :slots (_header _object_type _object_id _pose_x _pose_y _pose_z _heading _global_offset_x _global_offset_y _global_offset_z ))

(defmethod morai_msgs::CollisionData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:object_type __object_type) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:object_id __object_id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:pose_x __pose_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pose_y __pose_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pose_z __pose_z) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:heading __heading) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:global_offset_x __global_offset_x) 0.0)
    ((:global_offset_y __global_offset_y) 0.0)
    ((:global_offset_z __global_offset_z) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _object_type __object_type)
   (setq _object_id __object_id)
   (setq _pose_x __pose_x)
   (setq _pose_y __pose_y)
   (setq _pose_z __pose_z)
   (setq _heading __heading)
   (setq _global_offset_x (float __global_offset_x))
   (setq _global_offset_y (float __global_offset_y))
   (setq _global_offset_z (float __global_offset_z))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:object_type
   (&optional __object_type)
   (if __object_type (setq _object_type __object_type)) _object_type)
  (:object_id
   (&optional __object_id)
   (if __object_id (setq _object_id __object_id)) _object_id)
  (:pose_x
   (&optional __pose_x)
   (if __pose_x (setq _pose_x __pose_x)) _pose_x)
  (:pose_y
   (&optional __pose_y)
   (if __pose_y (setq _pose_y __pose_y)) _pose_y)
  (:pose_z
   (&optional __pose_z)
   (if __pose_z (setq _pose_z __pose_z)) _pose_z)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:global_offset_x
   (&optional __global_offset_x)
   (if __global_offset_x (setq _global_offset_x __global_offset_x)) _global_offset_x)
  (:global_offset_y
   (&optional __global_offset_y)
   (if __global_offset_y (setq _global_offset_y __global_offset_y)) _global_offset_y)
  (:global_offset_z
   (&optional __global_offset_z)
   (if __global_offset_z (setq _global_offset_z __global_offset_z)) _global_offset_z)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _object_type
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _object_type)) 4
    ;; int32[] _object_id
    (* 4    (length _object_id)) 4
    ;; float32[] _pose_x
    (* 4    (length _pose_x)) 4
    ;; float32[] _pose_y
    (* 4    (length _pose_y)) 4
    ;; float32[] _pose_z
    (* 4    (length _pose_z)) 4
    ;; float32[] _heading
    (* 4    (length _heading)) 4
    ;; float64 _global_offset_x
    8
    ;; float64 _global_offset_y
    8
    ;; float64 _global_offset_z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _object_type
     (write-long (length _object_type) s)
     (dolist (elem _object_type)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int32[] _object_id
     (write-long (length _object_id) s)
     (dotimes (i (length _object_id))
       (write-long (elt _object_id i) s)
       )
     ;; float32[] _pose_x
     (write-long (length _pose_x) s)
     (dotimes (i (length _pose_x))
       (sys::poke (elt _pose_x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _pose_y
     (write-long (length _pose_y) s)
     (dotimes (i (length _pose_y))
       (sys::poke (elt _pose_y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _pose_z
     (write-long (length _pose_z) s)
     (dotimes (i (length _pose_z))
       (sys::poke (elt _pose_z i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _heading
     (write-long (length _heading) s)
     (dotimes (i (length _heading))
       (sys::poke (elt _heading i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float64 _global_offset_x
       (sys::poke _global_offset_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _global_offset_y
       (sys::poke _global_offset_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _global_offset_z
       (sys::poke _global_offset_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _object_type
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _object_type (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _object_type i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int32[] _object_id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _object_id (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _object_id i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _pose_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pose_x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _pose_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pose_y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _pose_z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pose_z i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _heading
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _heading (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _heading i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float64 _global_offset_x
     (setq _global_offset_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _global_offset_y
     (setq _global_offset_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _global_offset_z
     (setq _global_offset_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get morai_msgs::CollisionData :md5sum-) "0630fa51ee74e1abba7806555a178f91")
(setf (get morai_msgs::CollisionData :datatype-) "morai_msgs/CollisionData")
(setf (get morai_msgs::CollisionData :definition-)
      "Header header

string[] object_type
int32[] object_id

float32[] pose_x
float32[] pose_y
float32[] pose_z
float32[] heading

float64 global_offset_x
float64 global_offset_y
float64 global_offset_z
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

")



(provide :morai_msgs/CollisionData "0630fa51ee74e1abba7806555a178f91")


