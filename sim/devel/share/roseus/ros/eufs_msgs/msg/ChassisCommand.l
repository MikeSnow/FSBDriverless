;; Auto-generated. Do not edit!


(when (boundp 'eufs_msgs::ChassisCommand)
  (if (not (find-package "EUFS_MSGS"))
    (make-package "EUFS_MSGS"))
  (shadow 'ChassisCommand (find-package "EUFS_MSGS")))
(unless (find-package "EUFS_MSGS::CHASSISCOMMAND")
  (make-package "EUFS_MSGS::CHASSISCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude ChassisCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass eufs_msgs::ChassisCommand
  :super ros::object
  :slots (_header _sender _throttle _steering _front_brake ))

(defmethod eufs_msgs::ChassisCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sender __sender) "")
    ((:throttle __throttle) 0.0)
    ((:steering __steering) 0.0)
    ((:front_brake __front_brake) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _sender (string __sender))
   (setq _throttle (float __throttle))
   (setq _steering (float __steering))
   (setq _front_brake (float __front_brake))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sender
   (&optional __sender)
   (if __sender (setq _sender __sender)) _sender)
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:steering
   (&optional __steering)
   (if __steering (setq _steering __steering)) _steering)
  (:front_brake
   (&optional __front_brake)
   (if __front_brake (setq _front_brake __front_brake)) _front_brake)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _sender
    4 (length _sender)
    ;; float64 _throttle
    8
    ;; float64 _steering
    8
    ;; float64 _front_brake
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _sender
       (write-long (length _sender) s) (princ _sender s)
     ;; float64 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steering
       (sys::poke _steering (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _front_brake
       (sys::poke _front_brake (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _sender
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sender (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _throttle
     (setq _throttle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steering
     (setq _steering (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _front_brake
     (setq _front_brake (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get eufs_msgs::ChassisCommand :md5sum-) "003e7b9af89a02607c6acd00a5b81f03")
(setf (get eufs_msgs::ChassisCommand :datatype-) "eufs_msgs/ChassisCommand")
(setf (get eufs_msgs::ChassisCommand :definition-)
      "Header header

string sender
float64 throttle
float64 steering
float64 front_brake

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



(provide :eufs_msgs/ChassisCommand "003e7b9af89a02607c6acd00a5b81f03")


