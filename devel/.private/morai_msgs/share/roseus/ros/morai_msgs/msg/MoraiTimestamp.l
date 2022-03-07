;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::MoraiTimestamp)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'MoraiTimestamp (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::MORAITIMESTAMP")
  (make-package "MORAI_MSGS::MORAITIMESTAMP"))

(in-package "ROS")
;;//! \htmlinclude MoraiTimestamp.msg.html


(defclass morai_msgs::MoraiTimestamp
  :super ros::object
  :slots (_msec _dateTime ))

(defmethod morai_msgs::MoraiTimestamp
  (:init
   (&key
    ((:msec __msec) 0.0)
    ((:dateTime __dateTime) "")
    )
   (send-super :init)
   (setq _msec (float __msec))
   (setq _dateTime (string __dateTime))
   self)
  (:msec
   (&optional __msec)
   (if __msec (setq _msec __msec)) _msec)
  (:dateTime
   (&optional __dateTime)
   (if __dateTime (setq _dateTime __dateTime)) _dateTime)
  (:serialization-length
   ()
   (+
    ;; float64 _msec
    8
    ;; string _dateTime
    4 (length _dateTime)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _msec
       (sys::poke _msec (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _dateTime
       (write-long (length _dateTime) s) (princ _dateTime s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _msec
     (setq _msec (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _dateTime
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dateTime (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get morai_msgs::MoraiTimestamp :md5sum-) "9c518394d21e3fbb8021d76f4d57e5d2")
(setf (get morai_msgs::MoraiTimestamp :datatype-) "morai_msgs/MoraiTimestamp")
(setf (get morai_msgs::MoraiTimestamp :definition-)
      "float64 msec
string dateTime

")



(provide :morai_msgs/MoraiTimestamp "9c518394d21e3fbb8021d76f4d57e5d2")


