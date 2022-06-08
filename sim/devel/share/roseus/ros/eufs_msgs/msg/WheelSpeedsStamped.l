;; Auto-generated. Do not edit!


(when (boundp 'eufs_msgs::WheelSpeedsStamped)
  (if (not (find-package "EUFS_MSGS"))
    (make-package "EUFS_MSGS"))
  (shadow 'WheelSpeedsStamped (find-package "EUFS_MSGS")))
(unless (find-package "EUFS_MSGS::WHEELSPEEDSSTAMPED")
  (make-package "EUFS_MSGS::WHEELSPEEDSSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude WheelSpeedsStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass eufs_msgs::WheelSpeedsStamped
  :super ros::object
  :slots (_header _steering _lf_speed _rf_speed _lb_speed _rb_speed ))

(defmethod eufs_msgs::WheelSpeedsStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:steering __steering) 0.0)
    ((:lf_speed __lf_speed) 0.0)
    ((:rf_speed __rf_speed) 0.0)
    ((:lb_speed __lb_speed) 0.0)
    ((:rb_speed __rb_speed) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _steering (float __steering))
   (setq _lf_speed (float __lf_speed))
   (setq _rf_speed (float __rf_speed))
   (setq _lb_speed (float __lb_speed))
   (setq _rb_speed (float __rb_speed))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:steering
   (&optional __steering)
   (if __steering (setq _steering __steering)) _steering)
  (:lf_speed
   (&optional __lf_speed)
   (if __lf_speed (setq _lf_speed __lf_speed)) _lf_speed)
  (:rf_speed
   (&optional __rf_speed)
   (if __rf_speed (setq _rf_speed __rf_speed)) _rf_speed)
  (:lb_speed
   (&optional __lb_speed)
   (if __lb_speed (setq _lb_speed __lb_speed)) _lb_speed)
  (:rb_speed
   (&optional __rb_speed)
   (if __rb_speed (setq _rb_speed __rb_speed)) _rb_speed)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _steering
    4
    ;; float32 _lf_speed
    4
    ;; float32 _rf_speed
    4
    ;; float32 _lb_speed
    4
    ;; float32 _rb_speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _steering
       (sys::poke _steering (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lf_speed
       (sys::poke _lf_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rf_speed
       (sys::poke _rf_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lb_speed
       (sys::poke _lb_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rb_speed
       (sys::poke _rb_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _steering
     (setq _steering (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lf_speed
     (setq _lf_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rf_speed
     (setq _rf_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lb_speed
     (setq _lb_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rb_speed
     (setq _rb_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get eufs_msgs::WheelSpeedsStamped :md5sum-) "478e5adefb6b1f69dba1fd1279c68795")
(setf (get eufs_msgs::WheelSpeedsStamped :datatype-) "eufs_msgs/WheelSpeedsStamped")
(setf (get eufs_msgs::WheelSpeedsStamped :definition-)
      "Header header

float32 steering
float32 lf_speed
float32 rf_speed
float32 lb_speed
float32 rb_speed

# Steering is in radians
# Speeds are in RPM

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



(provide :eufs_msgs/WheelSpeedsStamped "478e5adefb6b1f69dba1fd1279c68795")


