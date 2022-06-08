;; Auto-generated. Do not edit!


(when (boundp 'eufs_msgs::FullState)
  (if (not (find-package "EUFS_MSGS"))
    (make-package "EUFS_MSGS"))
  (shadow 'FullState (find-package "EUFS_MSGS")))
(unless (find-package "EUFS_MSGS::FULLSTATE")
  (make-package "EUFS_MSGS::FULLSTATE"))

(in-package "ROS")
;;//! \htmlinclude FullState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass eufs_msgs::FullState
  :super ros::object
  :slots (_header _x_pos _y_pos _yaw _roll _u_x _u_y _yaw_mder _front_throttle _rear_throttle _steering ))

(defmethod eufs_msgs::FullState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:x_pos __x_pos) 0.0)
    ((:y_pos __y_pos) 0.0)
    ((:yaw __yaw) 0.0)
    ((:roll __roll) 0.0)
    ((:u_x __u_x) 0.0)
    ((:u_y __u_y) 0.0)
    ((:yaw_mder __yaw_mder) 0.0)
    ((:front_throttle __front_throttle) 0.0)
    ((:rear_throttle __rear_throttle) 0.0)
    ((:steering __steering) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _x_pos (float __x_pos))
   (setq _y_pos (float __y_pos))
   (setq _yaw (float __yaw))
   (setq _roll (float __roll))
   (setq _u_x (float __u_x))
   (setq _u_y (float __u_y))
   (setq _yaw_mder (float __yaw_mder))
   (setq _front_throttle (float __front_throttle))
   (setq _rear_throttle (float __rear_throttle))
   (setq _steering (float __steering))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:x_pos
   (&optional __x_pos)
   (if __x_pos (setq _x_pos __x_pos)) _x_pos)
  (:y_pos
   (&optional __y_pos)
   (if __y_pos (setq _y_pos __y_pos)) _y_pos)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:u_x
   (&optional __u_x)
   (if __u_x (setq _u_x __u_x)) _u_x)
  (:u_y
   (&optional __u_y)
   (if __u_y (setq _u_y __u_y)) _u_y)
  (:yaw_mder
   (&optional __yaw_mder)
   (if __yaw_mder (setq _yaw_mder __yaw_mder)) _yaw_mder)
  (:front_throttle
   (&optional __front_throttle)
   (if __front_throttle (setq _front_throttle __front_throttle)) _front_throttle)
  (:rear_throttle
   (&optional __rear_throttle)
   (if __rear_throttle (setq _rear_throttle __rear_throttle)) _rear_throttle)
  (:steering
   (&optional __steering)
   (if __steering (setq _steering __steering)) _steering)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _x_pos
    8
    ;; float64 _y_pos
    8
    ;; float64 _yaw
    8
    ;; float64 _roll
    8
    ;; float64 _u_x
    8
    ;; float64 _u_y
    8
    ;; float64 _yaw_mder
    8
    ;; float64 _front_throttle
    8
    ;; float64 _rear_throttle
    8
    ;; float64 _steering
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _x_pos
       (sys::poke _x_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_pos
       (sys::poke _y_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u_x
       (sys::poke _u_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _u_y
       (sys::poke _u_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_mder
       (sys::poke _yaw_mder (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _front_throttle
       (sys::poke _front_throttle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rear_throttle
       (sys::poke _rear_throttle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steering
       (sys::poke _steering (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _x_pos
     (setq _x_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_pos
     (setq _y_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u_x
     (setq _u_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _u_y
     (setq _u_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_mder
     (setq _yaw_mder (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _front_throttle
     (setq _front_throttle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rear_throttle
     (setq _rear_throttle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steering
     (setq _steering (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get eufs_msgs::FullState :md5sum-) "401dfd30194f0a98ee1ec12310cf6b0f")
(setf (get eufs_msgs::FullState :datatype-) "eufs_msgs/FullState")
(setf (get eufs_msgs::FullState :definition-)
      "Header header

float64 x_pos
float64 y_pos
float64 yaw
float64 roll
float64 u_x
float64 u_y
float64 yaw_mder
float64 front_throttle
float64 rear_throttle
float64 steering
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



(provide :eufs_msgs/FullState "401dfd30194f0a98ee1ec12310cf6b0f")


