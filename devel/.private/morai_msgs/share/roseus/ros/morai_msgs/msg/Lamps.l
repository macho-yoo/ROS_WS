;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::Lamps)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'Lamps (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::LAMPS")
  (make-package "MORAI_MSGS::LAMPS"))

(in-package "ROS")
;;//! \htmlinclude Lamps.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass morai_msgs::Lamps
  :super ros::object
  :slots (_header _turnSignal _emergencySignal ))

(defmethod morai_msgs::Lamps
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:turnSignal __turnSignal) 0)
    ((:emergencySignal __emergencySignal) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _turnSignal (round __turnSignal))
   (setq _emergencySignal (round __emergencySignal))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:turnSignal
   (&optional __turnSignal)
   (if __turnSignal (setq _turnSignal __turnSignal)) _turnSignal)
  (:emergencySignal
   (&optional __emergencySignal)
   (if __emergencySignal (setq _emergencySignal __emergencySignal)) _emergencySignal)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _turnSignal
    1
    ;; uint8 _emergencySignal
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _turnSignal
       (write-byte _turnSignal s)
     ;; uint8 _emergencySignal
       (write-byte _emergencySignal s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _turnSignal
     (setq _turnSignal (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _emergencySignal
     (setq _emergencySignal (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get morai_msgs::Lamps :md5sum-) "dbe5afcb8d5a8cf7e09df4cd4352c874")
(setf (get morai_msgs::Lamps :datatype-) "morai_msgs/Lamps")
(setf (get morai_msgs::Lamps :definition-)
      "Header header

uint8 turnSignal
uint8 emergencySignal

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



(provide :morai_msgs/Lamps "dbe5afcb8d5a8cf7e09df4cd4352c874")


