;; Auto-generated. Do not edit!


(when (boundp 'eufs_msgs::PathIntegralTiming)
  (if (not (find-package "EUFS_MSGS"))
    (make-package "EUFS_MSGS"))
  (shadow 'PathIntegralTiming (find-package "EUFS_MSGS")))
(unless (find-package "EUFS_MSGS::PATHINTEGRALTIMING")
  (make-package "EUFS_MSGS::PATHINTEGRALTIMING"))

(in-package "ROS")
;;//! \htmlinclude PathIntegralTiming.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass eufs_msgs::PathIntegralTiming
  :super ros::object
  :slots (_header _average_time_between_poses _average_optimization_cycle_time _average_sleep_time ))

(defmethod eufs_msgs::PathIntegralTiming
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:average_time_between_poses __average_time_between_poses) 0.0)
    ((:average_optimization_cycle_time __average_optimization_cycle_time) 0.0)
    ((:average_sleep_time __average_sleep_time) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _average_time_between_poses (float __average_time_between_poses))
   (setq _average_optimization_cycle_time (float __average_optimization_cycle_time))
   (setq _average_sleep_time (float __average_sleep_time))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:average_time_between_poses
   (&optional __average_time_between_poses)
   (if __average_time_between_poses (setq _average_time_between_poses __average_time_between_poses)) _average_time_between_poses)
  (:average_optimization_cycle_time
   (&optional __average_optimization_cycle_time)
   (if __average_optimization_cycle_time (setq _average_optimization_cycle_time __average_optimization_cycle_time)) _average_optimization_cycle_time)
  (:average_sleep_time
   (&optional __average_sleep_time)
   (if __average_sleep_time (setq _average_sleep_time __average_sleep_time)) _average_sleep_time)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _average_time_between_poses
    8
    ;; float64 _average_optimization_cycle_time
    8
    ;; float64 _average_sleep_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _average_time_between_poses
       (sys::poke _average_time_between_poses (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _average_optimization_cycle_time
       (sys::poke _average_optimization_cycle_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _average_sleep_time
       (sys::poke _average_sleep_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _average_time_between_poses
     (setq _average_time_between_poses (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _average_optimization_cycle_time
     (setq _average_optimization_cycle_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _average_sleep_time
     (setq _average_sleep_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get eufs_msgs::PathIntegralTiming :md5sum-) "da8d85f1b7925638bce827c1d42eeb1b")
(setf (get eufs_msgs::PathIntegralTiming :datatype-) "eufs_msgs/PathIntegralTiming")
(setf (get eufs_msgs::PathIntegralTiming :definition-)
      "Header header

float64 average_time_between_poses
float64 average_optimization_cycle_time
float64 average_sleep_time

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



(provide :eufs_msgs/PathIntegralTiming "da8d85f1b7925638bce827c1d42eeb1b")


