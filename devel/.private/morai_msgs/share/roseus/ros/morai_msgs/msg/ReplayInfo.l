;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::ReplayInfo)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'ReplayInfo (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::REPLAYINFO")
  (make-package "MORAI_MSGS::REPLAYINFO"))

(in-package "ROS")
;;//! \htmlinclude ReplayInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass morai_msgs::ReplayInfo
  :super ros::object
  :slots (_header _ego_acc _ego_brake _ego_steer _ego_orientation_x _ego_orientation_y _ego_orientation_z _ego_orientation_w _ego_linearAcceleration_x _ego_linearAcceleration_y _ego_linearAcceleration_z _ego_AngularVelocity_x _ego_AngularVelocity_y _ego_AngularVelocity_z _num_of_objects _object_type _object_id _pose_x _pose_y _pose_z _heading _size_x _size_y _size_z _velocity ))

(defmethod morai_msgs::ReplayInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ego_acc __ego_acc) 0.0)
    ((:ego_brake __ego_brake) 0.0)
    ((:ego_steer __ego_steer) 0.0)
    ((:ego_orientation_x __ego_orientation_x) 0.0)
    ((:ego_orientation_y __ego_orientation_y) 0.0)
    ((:ego_orientation_z __ego_orientation_z) 0.0)
    ((:ego_orientation_w __ego_orientation_w) 0.0)
    ((:ego_linearAcceleration_x __ego_linearAcceleration_x) 0.0)
    ((:ego_linearAcceleration_y __ego_linearAcceleration_y) 0.0)
    ((:ego_linearAcceleration_z __ego_linearAcceleration_z) 0.0)
    ((:ego_AngularVelocity_x __ego_AngularVelocity_x) 0.0)
    ((:ego_AngularVelocity_y __ego_AngularVelocity_y) 0.0)
    ((:ego_AngularVelocity_z __ego_AngularVelocity_z) 0.0)
    ((:num_of_objects __num_of_objects) 0)
    ((:object_type __object_type) (make-array 0 :initial-element 0 :element-type :integer))
    ((:object_id __object_id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:pose_x __pose_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pose_y __pose_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pose_z __pose_z) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:heading __heading) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:size_x __size_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:size_y __size_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:size_z __size_z) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocity __velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _ego_acc (float __ego_acc))
   (setq _ego_brake (float __ego_brake))
   (setq _ego_steer (float __ego_steer))
   (setq _ego_orientation_x (float __ego_orientation_x))
   (setq _ego_orientation_y (float __ego_orientation_y))
   (setq _ego_orientation_z (float __ego_orientation_z))
   (setq _ego_orientation_w (float __ego_orientation_w))
   (setq _ego_linearAcceleration_x (float __ego_linearAcceleration_x))
   (setq _ego_linearAcceleration_y (float __ego_linearAcceleration_y))
   (setq _ego_linearAcceleration_z (float __ego_linearAcceleration_z))
   (setq _ego_AngularVelocity_x (float __ego_AngularVelocity_x))
   (setq _ego_AngularVelocity_y (float __ego_AngularVelocity_y))
   (setq _ego_AngularVelocity_z (float __ego_AngularVelocity_z))
   (setq _num_of_objects (round __num_of_objects))
   (setq _object_type __object_type)
   (setq _object_id __object_id)
   (setq _pose_x __pose_x)
   (setq _pose_y __pose_y)
   (setq _pose_z __pose_z)
   (setq _heading __heading)
   (setq _size_x __size_x)
   (setq _size_y __size_y)
   (setq _size_z __size_z)
   (setq _velocity __velocity)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ego_acc
   (&optional __ego_acc)
   (if __ego_acc (setq _ego_acc __ego_acc)) _ego_acc)
  (:ego_brake
   (&optional __ego_brake)
   (if __ego_brake (setq _ego_brake __ego_brake)) _ego_brake)
  (:ego_steer
   (&optional __ego_steer)
   (if __ego_steer (setq _ego_steer __ego_steer)) _ego_steer)
  (:ego_orientation_x
   (&optional __ego_orientation_x)
   (if __ego_orientation_x (setq _ego_orientation_x __ego_orientation_x)) _ego_orientation_x)
  (:ego_orientation_y
   (&optional __ego_orientation_y)
   (if __ego_orientation_y (setq _ego_orientation_y __ego_orientation_y)) _ego_orientation_y)
  (:ego_orientation_z
   (&optional __ego_orientation_z)
   (if __ego_orientation_z (setq _ego_orientation_z __ego_orientation_z)) _ego_orientation_z)
  (:ego_orientation_w
   (&optional __ego_orientation_w)
   (if __ego_orientation_w (setq _ego_orientation_w __ego_orientation_w)) _ego_orientation_w)
  (:ego_linearAcceleration_x
   (&optional __ego_linearAcceleration_x)
   (if __ego_linearAcceleration_x (setq _ego_linearAcceleration_x __ego_linearAcceleration_x)) _ego_linearAcceleration_x)
  (:ego_linearAcceleration_y
   (&optional __ego_linearAcceleration_y)
   (if __ego_linearAcceleration_y (setq _ego_linearAcceleration_y __ego_linearAcceleration_y)) _ego_linearAcceleration_y)
  (:ego_linearAcceleration_z
   (&optional __ego_linearAcceleration_z)
   (if __ego_linearAcceleration_z (setq _ego_linearAcceleration_z __ego_linearAcceleration_z)) _ego_linearAcceleration_z)
  (:ego_AngularVelocity_x
   (&optional __ego_AngularVelocity_x)
   (if __ego_AngularVelocity_x (setq _ego_AngularVelocity_x __ego_AngularVelocity_x)) _ego_AngularVelocity_x)
  (:ego_AngularVelocity_y
   (&optional __ego_AngularVelocity_y)
   (if __ego_AngularVelocity_y (setq _ego_AngularVelocity_y __ego_AngularVelocity_y)) _ego_AngularVelocity_y)
  (:ego_AngularVelocity_z
   (&optional __ego_AngularVelocity_z)
   (if __ego_AngularVelocity_z (setq _ego_AngularVelocity_z __ego_AngularVelocity_z)) _ego_AngularVelocity_z)
  (:num_of_objects
   (&optional __num_of_objects)
   (if __num_of_objects (setq _num_of_objects __num_of_objects)) _num_of_objects)
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
  (:size_x
   (&optional __size_x)
   (if __size_x (setq _size_x __size_x)) _size_x)
  (:size_y
   (&optional __size_y)
   (if __size_y (setq _size_y __size_y)) _size_y)
  (:size_z
   (&optional __size_z)
   (if __size_z (setq _size_z __size_z)) _size_z)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _ego_acc
    8
    ;; float64 _ego_brake
    8
    ;; float64 _ego_steer
    8
    ;; float64 _ego_orientation_x
    8
    ;; float64 _ego_orientation_y
    8
    ;; float64 _ego_orientation_z
    8
    ;; float64 _ego_orientation_w
    8
    ;; float64 _ego_linearAcceleration_x
    8
    ;; float64 _ego_linearAcceleration_y
    8
    ;; float64 _ego_linearAcceleration_z
    8
    ;; float64 _ego_AngularVelocity_x
    8
    ;; float64 _ego_AngularVelocity_y
    8
    ;; float64 _ego_AngularVelocity_z
    8
    ;; int32 _num_of_objects
    4
    ;; int16[] _object_type
    (* 2    (length _object_type)) 4
    ;; int32[] _object_id
    (* 4    (length _object_id)) 4
    ;; float64[] _pose_x
    (* 8    (length _pose_x)) 4
    ;; float64[] _pose_y
    (* 8    (length _pose_y)) 4
    ;; float64[] _pose_z
    (* 8    (length _pose_z)) 4
    ;; float64[] _heading
    (* 8    (length _heading)) 4
    ;; float64[] _size_x
    (* 8    (length _size_x)) 4
    ;; float64[] _size_y
    (* 8    (length _size_y)) 4
    ;; float64[] _size_z
    (* 8    (length _size_z)) 4
    ;; float64[] _velocity
    (* 8    (length _velocity)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _ego_acc
       (sys::poke _ego_acc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ego_brake
       (sys::poke _ego_brake (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ego_steer
       (sys::poke _ego_steer (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ego_orientation_x
       (sys::poke _ego_orientation_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ego_orientation_y
       (sys::poke _ego_orientation_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ego_orientation_z
       (sys::poke _ego_orientation_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ego_orientation_w
       (sys::poke _ego_orientation_w (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ego_linearAcceleration_x
       (sys::poke _ego_linearAcceleration_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ego_linearAcceleration_y
       (sys::poke _ego_linearAcceleration_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ego_linearAcceleration_z
       (sys::poke _ego_linearAcceleration_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ego_AngularVelocity_x
       (sys::poke _ego_AngularVelocity_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ego_AngularVelocity_y
       (sys::poke _ego_AngularVelocity_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ego_AngularVelocity_z
       (sys::poke _ego_AngularVelocity_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _num_of_objects
       (write-long _num_of_objects s)
     ;; int16[] _object_type
     (write-long (length _object_type) s)
     (dotimes (i (length _object_type))
       (write-word (elt _object_type i) s)
       )
     ;; int32[] _object_id
     (write-long (length _object_id) s)
     (dotimes (i (length _object_id))
       (write-long (elt _object_id i) s)
       )
     ;; float64[] _pose_x
     (write-long (length _pose_x) s)
     (dotimes (i (length _pose_x))
       (sys::poke (elt _pose_x i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _pose_y
     (write-long (length _pose_y) s)
     (dotimes (i (length _pose_y))
       (sys::poke (elt _pose_y i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _pose_z
     (write-long (length _pose_z) s)
     (dotimes (i (length _pose_z))
       (sys::poke (elt _pose_z i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _heading
     (write-long (length _heading) s)
     (dotimes (i (length _heading))
       (sys::poke (elt _heading i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _size_x
     (write-long (length _size_x) s)
     (dotimes (i (length _size_x))
       (sys::poke (elt _size_x i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _size_y
     (write-long (length _size_y) s)
     (dotimes (i (length _size_y))
       (sys::poke (elt _size_y i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _size_z
     (write-long (length _size_z) s)
     (dotimes (i (length _size_z))
       (sys::poke (elt _size_z i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _velocity
     (write-long (length _velocity) s)
     (dotimes (i (length _velocity))
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _ego_acc
     (setq _ego_acc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ego_brake
     (setq _ego_brake (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ego_steer
     (setq _ego_steer (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ego_orientation_x
     (setq _ego_orientation_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ego_orientation_y
     (setq _ego_orientation_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ego_orientation_z
     (setq _ego_orientation_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ego_orientation_w
     (setq _ego_orientation_w (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ego_linearAcceleration_x
     (setq _ego_linearAcceleration_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ego_linearAcceleration_y
     (setq _ego_linearAcceleration_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ego_linearAcceleration_z
     (setq _ego_linearAcceleration_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ego_AngularVelocity_x
     (setq _ego_AngularVelocity_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ego_AngularVelocity_y
     (setq _ego_AngularVelocity_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ego_AngularVelocity_z
     (setq _ego_AngularVelocity_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _num_of_objects
     (setq _num_of_objects (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16[] _object_type
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _object_type (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _object_type i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int32[] _object_id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _object_id (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _object_id i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64[] _pose_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pose_x i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _pose_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pose_y i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _pose_z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pose_z i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _heading
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _heading (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _heading i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _size_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _size_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _size_x i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _size_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _size_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _size_y i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _size_z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _size_z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _size_z i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get morai_msgs::ReplayInfo :md5sum-) "5461824bc0fed3d006858ffb04fc7b18")
(setf (get morai_msgs::ReplayInfo :datatype-) "morai_msgs/ReplayInfo")
(setf (get morai_msgs::ReplayInfo :definition-)
      "Header header

float64 ego_acc
float64 ego_brake
float64 ego_steer

float64 ego_orientation_x
float64 ego_orientation_y
float64 ego_orientation_z
float64 ego_orientation_w

float64 ego_linearAcceleration_x
float64 ego_linearAcceleration_y
float64 ego_linearAcceleration_z

float64 ego_AngularVelocity_x
float64 ego_AngularVelocity_y
float64 ego_AngularVelocity_z

int32 num_of_objects
int16[] object_type

int32[] object_id

float64[] pose_x
float64[] pose_y
float64[] pose_z

float64[] heading

float64[] size_x
float64[] size_y
float64[] size_z

float64[] velocity


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



(provide :morai_msgs/ReplayInfo "5461824bc0fed3d006858ffb04fc7b18")


