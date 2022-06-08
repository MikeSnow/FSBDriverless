;; Auto-generated. Do not edit!


(when (boundp 'eufs_msgs::Waypoint)
  (if (not (find-package "EUFS_MSGS"))
    (make-package "EUFS_MSGS"))
  (shadow 'Waypoint (find-package "EUFS_MSGS")))
(unless (find-package "EUFS_MSGS::WAYPOINT")
  (make-package "EUFS_MSGS::WAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude Waypoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass eufs_msgs::Waypoint
  :super ros::object
  :slots (_position _speed _suggested_steering ))

(defmethod eufs_msgs::Waypoint
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:speed __speed) 0.0)
    ((:suggested_steering __suggested_steering) 0.0)
    )
   (send-super :init)
   (setq _position __position)
   (setq _speed (float __speed))
   (setq _suggested_steering (float __suggested_steering))
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:suggested_steering
   (&optional __suggested_steering)
   (if __suggested_steering (setq _suggested_steering __suggested_steering)) _suggested_steering)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float64 _speed
    8
    ;; float64 _suggested_steering
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _suggested_steering
       (sys::poke _suggested_steering (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _suggested_steering
     (setq _suggested_steering (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get eufs_msgs::Waypoint :md5sum-) "b676a37b14a640e08175196f0fdd0067")
(setf (get eufs_msgs::Waypoint :datatype-) "eufs_msgs/Waypoint")
(setf (get eufs_msgs::Waypoint :definition-)
      "# Waypoint position
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



(provide :eufs_msgs/Waypoint "b676a37b14a640e08175196f0fdd0067")


