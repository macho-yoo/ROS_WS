;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::GenericVehicleControl)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'GenericVehicleControl (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::GENERICVEHICLECONTROL")
  (make-package "MORAI_MSGS::GENERICVEHICLECONTROL"))

(in-package "ROS")
;;//! \htmlinclude GenericVehicleControl.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*TYPE_GEAR_FORWARD*" (find-package "MORAI_MSGS::GENERICVEHICLECONTROL"))
(shadow '*TYPE_GEAR_FORWARD* (find-package "MORAI_MSGS::GENERICVEHICLECONTROL"))
(defconstant morai_msgs::GenericVehicleControl::*TYPE_GEAR_FORWARD* 0)
(intern "*TYPE_GEAR_NEUTRAL*" (find-package "MORAI_MSGS::GENERICVEHICLECONTROL"))
(shadow '*TYPE_GEAR_NEUTRAL* (find-package "MORAI_MSGS::GENERICVEHICLECONTROL"))
(defconstant morai_msgs::GenericVehicleControl::*TYPE_GEAR_NEUTRAL* 1)
(intern "*TYPE_GEAR_BACKWARD*" (find-package "MORAI_MSGS::GENERICVEHICLECONTROL"))
(shadow '*TYPE_GEAR_BACKWARD* (find-package "MORAI_MSGS::GENERICVEHICLECONTROL"))
(defconstant morai_msgs::GenericVehicleControl::*TYPE_GEAR_BACKWARD* 2)
(intern "*TYPE_GEAR_PARKING*" (find-package "MORAI_MSGS::GENERICVEHICLECONTROL"))
(shadow '*TYPE_GEAR_PARKING* (find-package "MORAI_MSGS::GENERICVEHICLECONTROL"))
(defconstant morai_msgs::GenericVehicleControl::*TYPE_GEAR_PARKING* 3)
(intern "*CONST_SPEED_UPPERBOUND*" (find-package "MORAI_MSGS::GENERICVEHICLECONTROL"))
(shadow '*CONST_SPEED_UPPERBOUND* (find-package "MORAI_MSGS::GENERICVEHICLECONTROL"))
(defconstant morai_msgs::GenericVehicleControl::*CONST_SPEED_UPPERBOUND* 5.5)
(intern "*CONST_SPEED_LOWERBOUND*" (find-package "MORAI_MSGS::GENERICVEHICLECONTROL"))
(shadow '*CONST_SPEED_LOWERBOUND* (find-package "MORAI_MSGS::GENERICVEHICLECONTROL"))
(defconstant morai_msgs::GenericVehicleControl::*CONST_SPEED_LOWERBOUND* -5.5)
(intern "*CONST_ACCELERATION_UPPERBOUND*" (find-package "MORAI_MSGS::GENERICVEHICLECONTROL"))
(shadow '*CONST_ACCELERATION_UPPERBOUND* (find-package "MORAI_MSGS::GENERICVEHICLECONTROL"))
(defconstant morai_msgs::GenericVehicleControl::*CONST_ACCELERATION_UPPERBOUND* 4.0)
(intern "*CONST_ACCELERATION_LOWERBOUND*" (find-package "MORAI_MSGS::GENERICVEHICLECONTROL"))
(shadow '*CONST_ACCELERATION_LOWERBOUND* (find-package "MORAI_MSGS::GENERICVEHICLECONTROL"))
(defconstant morai_msgs::GenericVehicleControl::*CONST_ACCELERATION_LOWERBOUND* -4.0)
(intern "*CONST_STEER_LEFTMOST*" (find-package "MORAI_MSGS::GENERICVEHICLECONTROL"))
(shadow '*CONST_STEER_LEFTMOST* (find-package "MORAI_MSGS::GENERICVEHICLECONTROL"))
(defconstant morai_msgs::GenericVehicleControl::*CONST_STEER_LEFTMOST* 28.1)
(intern "*CONST_STEER_RIGHTMOST*" (find-package "MORAI_MSGS::GENERICVEHICLECONTROL"))
(shadow '*CONST_STEER_RIGHTMOST* (find-package "MORAI_MSGS::GENERICVEHICLECONTROL"))
(defconstant morai_msgs::GenericVehicleControl::*CONST_STEER_RIGHTMOST* -28.1)
(defclass morai_msgs::GenericVehicleControl
  :super ros::object
  :slots (_header _emergency_stop _gear _speed _acceleration _steer ))

(defmethod morai_msgs::GenericVehicleControl
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:emergency_stop __emergency_stop) nil)
    ((:gear __gear) 0)
    ((:speed __speed) 0.0)
    ((:acceleration __acceleration) 0.0)
    ((:steer __steer) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _emergency_stop __emergency_stop)
   (setq _gear (round __gear))
   (setq _speed (float __speed))
   (setq _acceleration (float __acceleration))
   (setq _steer (float __steer))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:emergency_stop
   (&optional __emergency_stop)
   (if __emergency_stop (setq _emergency_stop __emergency_stop)) _emergency_stop)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:steer
   (&optional __steer)
   (if __steer (setq _steer __steer)) _steer)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _emergency_stop
    1
    ;; uint8 _gear
    1
    ;; float64 _speed
    8
    ;; float64 _acceleration
    8
    ;; float64 _steer
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _emergency_stop
       (if _emergency_stop (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _gear
       (write-byte _gear s)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acceleration
       (sys::poke _acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steer
       (sys::poke _steer (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _emergency_stop
     (setq _emergency_stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _gear
     (setq _gear (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acceleration
     (setq _acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steer
     (setq _steer (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get morai_msgs::GenericVehicleControl :md5sum-) "e7242e2ff6ba1d4caf20d5a90ed61c09")
(setf (get morai_msgs::GenericVehicleControl :datatype-) "morai_msgs/GenericVehicleControl")
(setf (get morai_msgs::GenericVehicleControl :definition-)
      "# You should set header.stamp when you publish this message to the correspoding topic
#
# - The header.stamp will be used for measuring timeout in the lower layer for fail-safe
Header header

# True for emergency stop
# 
# - DO NOT set this field unless the severe problem is detected(or expected)
bool emergency_stop

uint8 TYPE_GEAR_FORWARD=0
uint8 TYPE_GEAR_NEUTRAL=1
uint8 TYPE_GEAR_BACKWARD=2
uint8 TYPE_GEAR_PARKING=3

# One of the above TYPEGEAR* values
#
# - Values not in the above type will be ignored
uint8 gear

float64 CONST_SPEED_UPPERBOUND=5.5
float64 CONST_SPEED_LOWERBOUND=-5.5

# Target speed in unit of meter per second(m/sec)
#
# - Positive value means forward movement, negative value means reverse movement
# - The value out of range [CONST_SPEED_LOWERBOUND, CONST_SPEED_LOWERBOUND] will be adjusted to CONST_SPEED_LOWERBOUND/CONST_SPEED_UPPERBOUND
float64 speed

float64 CONST_ACCELERATION_UPPERBOUND=4.0
float64 CONST_ACCELERATION_LOWERBOUND=-4.0

# Targer acceleration in meter per second^2(m/sec^2)
#
# - Positive value means accel., negative value means deaccel.
# - The value out of range [CONST_ACCELERATION_LOWERBOUND, CONST_ACCELERATION_LOWERBOUND] will be adjusted to CONST_ACCELERATION_LOWERBOUND/CONST_ACCELERATION_UPPERBOUND
float64 acceleration

float64 CONST_STEER_LEFTMOST=28.1
float64 CONST_STEER_RIGHTMOST=-28.1

# Target steering angle in unit of degree(deg)
#
# - The negative value indicates right steer(positive: left steer)
# - The value out of range [CONST_STEER_RIGHTMOST, CONST_STEER_LEFTMOST] will be adjusted to CONST_STEER_LEFTMOST/CONST_STEER_RIGHTMOST
float64 steer

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



(provide :morai_msgs/GenericVehicleControl "e7242e2ff6ba1d4caf20d5a90ed61c09")


