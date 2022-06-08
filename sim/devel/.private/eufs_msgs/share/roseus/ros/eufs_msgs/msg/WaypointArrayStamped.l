;; Auto-generated. Do not edit!


(when (boundp 'eufs_msgs::WaypointArrayStamped)
  (if (not (find-package "EUFS_MSGS"))
    (make-package "EUFS_MSGS"))
  (shadow 'WaypointArrayStamped (find-package "EUFS_MSGS")))
(unless (find-package "EUFS_MSGS::WAYPOINTARRAYSTAMPED")
  (make-package "EUFS_MSGS::WAYPOINTARRAYSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude WaypointArrayStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass eufs_msgs::WaypointArrayStamped
  :super ros::object
  :slots (_header _waypoints ))

(defmethod eufs_msgs::WaypointArrayStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:waypoints __waypoints) (let (r) (dotimes (i 0) (push (instance eufs_msgs::Waypoint :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _waypoints __waypoints)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; eufs_msgs/Waypoint[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; eufs_msgs/Waypoint[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; eufs_msgs/Waypoint[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance eufs_msgs::Waypoint :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get eufs_msgs::WaypointArrayStamped :md5sum-) "67e4e1ebd4bde53d443d5eae4ecef75e")
(setf (get eufs_msgs::WaypointArrayStamped :datatype-) "eufs_msgs/WaypointArrayStamped")
(setf (get eufs_msgs::WaypointArrayStamped :definition-)
      "# This message is used by planning nodes to advertise suggested trajectory waypoints 
# as well as suggested velocity and steering at each waypoint.

Header header

Waypoint[] waypoints
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

================================================================================
MSG: eufs_msgs/Waypoint
# Waypoint position
geometry_msgs/Point position

# Suggested forward velocity (x direction in car frame)
float64 speed # m/s

# Suggested steering angle
float64 suggested_steering # rad
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :eufs_msgs/WaypointArrayStamped "67e4e1ebd4bde53d443d5eae4ecef75e")


