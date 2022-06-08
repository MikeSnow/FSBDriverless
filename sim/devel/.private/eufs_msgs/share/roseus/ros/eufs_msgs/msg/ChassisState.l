;; Auto-generated. Do not edit!


(when (boundp 'eufs_msgs::ChassisState)
  (if (not (find-package "EUFS_MSGS"))
    (make-package "EUFS_MSGS"))
  (shadow 'ChassisState (find-package "EUFS_MSGS")))
(unless (find-package "EUFS_MSGS::CHASSISSTATE")
  (make-package "EUFS_MSGS::CHASSISSTATE"))

(in-package "ROS")
;;//! \htmlinclude ChassisState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass eufs_msgs::ChassisState
  :super ros::object
  :slots (_header _throttle_relay_enabled _autonomous_enabled _runstop_motion_enabled _steering_commander _steering _throttle_commander _throttle _front_brake_commander _front_brake ))

(defmethod eufs_msgs::ChassisState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:throttle_relay_enabled __throttle_relay_enabled) nil)
    ((:autonomous_enabled __autonomous_enabled) nil)
    ((:runstop_motion_enabled __runstop_motion_enabled) nil)
    ((:steering_commander __steering_commander) "")
    ((:steering __steering) 0.0)
    ((:throttle_commander __throttle_commander) "")
    ((:throttle __throttle) 0.0)
    ((:front_brake_commander __front_brake_commander) "")
    ((:front_brake __front_brake) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _throttle_relay_enabled __throttle_relay_enabled)
   (setq _autonomous_enabled __autonomous_enabled)
   (setq _runstop_motion_enabled __runstop_motion_enabled)
   (setq _steering_commander (string __steering_commander))
   (setq _steering (float __steering))
   (setq _throttle_commander (string __throttle_commander))
   (setq _throttle (float __throttle))
   (setq _front_brake_commander (string __front_brake_commander))
   (setq _front_brake (float __front_brake))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:throttle_relay_enabled
   (&optional __throttle_relay_enabled)
   (if __throttle_relay_enabled (setq _throttle_relay_enabled __throttle_relay_enabled)) _throttle_relay_enabled)
  (:autonomous_enabled
   (&optional __autonomous_enabled)
   (if __autonomous_enabled (setq _autonomous_enabled __autonomous_enabled)) _autonomous_enabled)
  (:runstop_motion_enabled
   (&optional __runstop_motion_enabled)
   (if __runstop_motion_enabled (setq _runstop_motion_enabled __runstop_motion_enabled)) _runstop_motion_enabled)
  (:steering_commander
   (&optional __steering_commander)
   (if __steering_commander (setq _steering_commander __steering_commander)) _steering_commander)
  (:steering
   (&optional __steering)
   (if __steering (setq _steering __steering)) _steering)
  (:throttle_commander
   (&optional __throttle_commander)
   (if __throttle_commander (setq _throttle_commander __throttle_commander)) _throttle_commander)
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:front_brake_commander
   (&optional __front_brake_commander)
   (if __front_brake_commander (setq _front_brake_commander __front_brake_commander)) _front_brake_commander)
  (:front_brake
   (&optional __front_brake)
   (if __front_brake (setq _front_brake __front_brake)) _front_brake)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _throttle_relay_enabled
    1
    ;; bool _autonomous_enabled
    1
    ;; bool _runstop_motion_enabled
    1
    ;; string _steering_commander
    4 (length _steering_commander)
    ;; float64 _steering
    8
    ;; string _throttle_commander
    4 (length _throttle_commander)
    ;; float64 _throttle
    8
    ;; string _front_brake_commander
    4 (length _front_brake_commander)
    ;; float64 _front_brake
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _throttle_relay_enabled
       (if _throttle_relay_enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _autonomous_enabled
       (if _autonomous_enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _runstop_motion_enabled
       (if _runstop_motion_enabled (write-byte -1 s) (write-byte 0 s))
     ;; string _steering_commander
       (write-long (length _steering_commander) s) (princ _steering_commander s)
     ;; float64 _steering
       (sys::poke _steering (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _throttle_commander
       (write-long (length _throttle_commander) s) (princ _throttle_commander s)
     ;; float64 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _front_brake_commander
       (write-long (length _front_brake_commander) s) (princ _front_brake_commander s)
     ;; float64 _front_brake
       (sys::poke _front_brake (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _throttle_relay_enabled
     (setq _throttle_relay_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _autonomous_enabled
     (setq _autonomous_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _runstop_motion_enabled
     (setq _runstop_motion_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _steering_commander
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _steering_commander (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _steering
     (setq _steering (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _throttle_commander
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _throttle_commander (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _throttle
     (setq _throttle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _front_brake_commander
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _front_brake_commander (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _front_brake
     (setq _front_brake (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get eufs_msgs::ChassisState :md5sum-) "94f504003a2d58582928e8e48a2519db")
(setf (get eufs_msgs::ChassisState :datatype-) "eufs_msgs/ChassisState")
(setf (get eufs_msgs::ChassisState :definition-)
      "Header header

bool throttle_relay_enabled
bool autonomous_enabled
bool runstop_motion_enabled

string steering_commander
float64 steering

string throttle_commander
float64 throttle

string front_brake_commander
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



(provide :eufs_msgs/ChassisState "94f504003a2d58582928e8e48a2519db")


