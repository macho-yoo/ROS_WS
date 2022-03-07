;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::IntersectionStatus)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'IntersectionStatus (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::INTERSECTIONSTATUS")
  (make-package "MORAI_MSGS::INTERSECTIONSTATUS"))

(in-package "ROS")
;;//! \htmlinclude IntersectionStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass morai_msgs::IntersectionStatus
  :super ros::object
  :slots (_header _intersection_index _intersection_status _intersection_status_time _traffic_light_index _traffic_light_status _traffic_light_next_status ))

(defmethod morai_msgs::IntersectionStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:intersection_index __intersection_index) "")
    ((:intersection_status __intersection_status) 0)
    ((:intersection_status_time __intersection_status_time) 0.0)
    ((:traffic_light_index __traffic_light_index) "")
    ((:traffic_light_status __traffic_light_status) 0)
    ((:traffic_light_next_status __traffic_light_next_status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _intersection_index (string __intersection_index))
   (setq _intersection_status (round __intersection_status))
   (setq _intersection_status_time (float __intersection_status_time))
   (setq _traffic_light_index (string __traffic_light_index))
   (setq _traffic_light_status (round __traffic_light_status))
   (setq _traffic_light_next_status (round __traffic_light_next_status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:intersection_index
   (&optional __intersection_index)
   (if __intersection_index (setq _intersection_index __intersection_index)) _intersection_index)
  (:intersection_status
   (&optional __intersection_status)
   (if __intersection_status (setq _intersection_status __intersection_status)) _intersection_status)
  (:intersection_status_time
   (&optional __intersection_status_time)
   (if __intersection_status_time (setq _intersection_status_time __intersection_status_time)) _intersection_status_time)
  (:traffic_light_index
   (&optional __traffic_light_index)
   (if __traffic_light_index (setq _traffic_light_index __traffic_light_index)) _traffic_light_index)
  (:traffic_light_status
   (&optional __traffic_light_status)
   (if __traffic_light_status (setq _traffic_light_status __traffic_light_status)) _traffic_light_status)
  (:traffic_light_next_status
   (&optional __traffic_light_next_status)
   (if __traffic_light_next_status (setq _traffic_light_next_status __traffic_light_next_status)) _traffic_light_next_status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _intersection_index
    4 (length _intersection_index)
    ;; int16 _intersection_status
    2
    ;; float32 _intersection_status_time
    4
    ;; string _traffic_light_index
    4 (length _traffic_light_index)
    ;; int16 _traffic_light_status
    2
    ;; int16 _traffic_light_next_status
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _intersection_index
       (write-long (length _intersection_index) s) (princ _intersection_index s)
     ;; int16 _intersection_status
       (write-word _intersection_status s)
     ;; float32 _intersection_status_time
       (sys::poke _intersection_status_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _traffic_light_index
       (write-long (length _traffic_light_index) s) (princ _traffic_light_index s)
     ;; int16 _traffic_light_status
       (write-word _traffic_light_status s)
     ;; int16 _traffic_light_next_status
       (write-word _traffic_light_next_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _intersection_index
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _intersection_index (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _intersection_status
     (setq _intersection_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _intersection_status_time
     (setq _intersection_status_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _traffic_light_index
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _traffic_light_index (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _traffic_light_status
     (setq _traffic_light_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _traffic_light_next_status
     (setq _traffic_light_next_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get morai_msgs::IntersectionStatus :md5sum-) "572673c33cdaae6543f2464d6fe5a5e0")
(setf (get morai_msgs::IntersectionStatus :datatype-) "morai_msgs/IntersectionStatus")
(setf (get morai_msgs::IntersectionStatus :definition-)
      "Header header
string intersection_index
int16 intersection_status
float32 intersection_status_time

string traffic_light_index
int16 traffic_light_status
int16 traffic_light_next_status

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



(provide :morai_msgs/IntersectionStatus "572673c33cdaae6543f2464d6fe5a5e0")


