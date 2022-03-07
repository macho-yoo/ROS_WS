;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::GhostMessage)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'GhostMessage (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::GHOSTMESSAGE")
  (make-package "MORAI_MSGS::GHOSTMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude GhostMessage.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass morai_msgs::GhostMessage
  :super ros::object
  :slots (_header _option_geometry _option_dynamics _offset_east _offset_north _offset_height _pos_x _pos_y _pos_z _heading _velocity ))

(defmethod morai_msgs::GhostMessage
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:option_geometry __option_geometry) 0)
    ((:option_dynamics __option_dynamics) 0)
    ((:offset_east __offset_east) 0.0)
    ((:offset_north __offset_north) 0.0)
    ((:offset_height __offset_height) 0.0)
    ((:pos_x __pos_x) 0.0)
    ((:pos_y __pos_y) 0.0)
    ((:pos_z __pos_z) 0.0)
    ((:heading __heading) 0.0)
    ((:velocity __velocity) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _option_geometry (round __option_geometry))
   (setq _option_dynamics (round __option_dynamics))
   (setq _offset_east (float __offset_east))
   (setq _offset_north (float __offset_north))
   (setq _offset_height (float __offset_height))
   (setq _pos_x (float __pos_x))
   (setq _pos_y (float __pos_y))
   (setq _pos_z (float __pos_z))
   (setq _heading (float __heading))
   (setq _velocity (float __velocity))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:option_geometry
   (&optional __option_geometry)
   (if __option_geometry (setq _option_geometry __option_geometry)) _option_geometry)
  (:option_dynamics
   (&optional __option_dynamics)
   (if __option_dynamics (setq _option_dynamics __option_dynamics)) _option_dynamics)
  (:offset_east
   (&optional __offset_east)
   (if __offset_east (setq _offset_east __offset_east)) _offset_east)
  (:offset_north
   (&optional __offset_north)
   (if __offset_north (setq _offset_north __offset_north)) _offset_north)
  (:offset_height
   (&optional __offset_height)
   (if __offset_height (setq _offset_height __offset_height)) _offset_height)
  (:pos_x
   (&optional __pos_x)
   (if __pos_x (setq _pos_x __pos_x)) _pos_x)
  (:pos_y
   (&optional __pos_y)
   (if __pos_y (setq _pos_y __pos_y)) _pos_y)
  (:pos_z
   (&optional __pos_z)
   (if __pos_z (setq _pos_z __pos_z)) _pos_z)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int16 _option_geometry
    2
    ;; byte _option_dynamics
    1
    ;; float64 _offset_east
    8
    ;; float64 _offset_north
    8
    ;; float64 _offset_height
    8
    ;; float64 _pos_x
    8
    ;; float64 _pos_y
    8
    ;; float64 _pos_z
    8
    ;; float64 _heading
    8
    ;; float64 _velocity
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int16 _option_geometry
       (write-word _option_geometry s)
     ;; byte _option_dynamics
       (write-byte _option_dynamics s)
     ;; float64 _offset_east
       (sys::poke _offset_east (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _offset_north
       (sys::poke _offset_north (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _offset_height
       (sys::poke _offset_height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pos_x
       (sys::poke _pos_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pos_y
       (sys::poke _pos_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pos_z
       (sys::poke _pos_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int16 _option_geometry
     (setq _option_geometry (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; byte _option_dynamics
     (setq _option_dynamics (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _option_dynamics 127) (setq _option_dynamics (- _option_dynamics 256)))
   ;; float64 _offset_east
     (setq _offset_east (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _offset_north
     (setq _offset_north (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _offset_height
     (setq _offset_height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pos_x
     (setq _pos_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pos_y
     (setq _pos_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pos_z
     (setq _pos_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get morai_msgs::GhostMessage :md5sum-) "ff33699472448776499294d59ada2106")
(setf (get morai_msgs::GhostMessage :datatype-) "morai_msgs/GhostMessage")
(setf (get morai_msgs::GhostMessage :definition-)
      "Header header
int16 option_geometry
byte option_dynamics

float64 offset_east
float64 offset_north
float64 offset_height

float64 pos_x
float64 pos_y
float64 pos_z

float64 heading

float64 velocity

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



(provide :morai_msgs/GhostMessage "ff33699472448776499294d59ada2106")


