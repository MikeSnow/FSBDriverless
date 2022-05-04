;; Auto-generated. Do not edit!


(when (boundp 'eufs_msgs::ConeArrayWithCovariance)
  (if (not (find-package "EUFS_MSGS"))
    (make-package "EUFS_MSGS"))
  (shadow 'ConeArrayWithCovariance (find-package "EUFS_MSGS")))
(unless (find-package "EUFS_MSGS::CONEARRAYWITHCOVARIANCE")
  (make-package "EUFS_MSGS::CONEARRAYWITHCOVARIANCE"))

(in-package "ROS")
;;//! \htmlinclude ConeArrayWithCovariance.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass eufs_msgs::ConeArrayWithCovariance
  :super ros::object
  :slots (_header _blue_cones _yellow_cones _orange_cones _big_orange_cones _unknown_color_cones ))

(defmethod eufs_msgs::ConeArrayWithCovariance
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:blue_cones __blue_cones) (let (r) (dotimes (i 0) (push (instance eufs_msgs::ConeWithCovariance :init) r)) r))
    ((:yellow_cones __yellow_cones) (let (r) (dotimes (i 0) (push (instance eufs_msgs::ConeWithCovariance :init) r)) r))
    ((:orange_cones __orange_cones) (let (r) (dotimes (i 0) (push (instance eufs_msgs::ConeWithCovariance :init) r)) r))
    ((:big_orange_cones __big_orange_cones) (let (r) (dotimes (i 0) (push (instance eufs_msgs::ConeWithCovariance :init) r)) r))
    ((:unknown_color_cones __unknown_color_cones) (let (r) (dotimes (i 0) (push (instance eufs_msgs::ConeWithCovariance :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _blue_cones __blue_cones)
   (setq _yellow_cones __yellow_cones)
   (setq _orange_cones __orange_cones)
   (setq _big_orange_cones __big_orange_cones)
   (setq _unknown_color_cones __unknown_color_cones)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:blue_cones
   (&rest __blue_cones)
   (if (keywordp (car __blue_cones))
       (send* _blue_cones __blue_cones)
     (progn
       (if __blue_cones (setq _blue_cones (car __blue_cones)))
       _blue_cones)))
  (:yellow_cones
   (&rest __yellow_cones)
   (if (keywordp (car __yellow_cones))
       (send* _yellow_cones __yellow_cones)
     (progn
       (if __yellow_cones (setq _yellow_cones (car __yellow_cones)))
       _yellow_cones)))
  (:orange_cones
   (&rest __orange_cones)
   (if (keywordp (car __orange_cones))
       (send* _orange_cones __orange_cones)
     (progn
       (if __orange_cones (setq _orange_cones (car __orange_cones)))
       _orange_cones)))
  (:big_orange_cones
   (&rest __big_orange_cones)
   (if (keywordp (car __big_orange_cones))
       (send* _big_orange_cones __big_orange_cones)
     (progn
       (if __big_orange_cones (setq _big_orange_cones (car __big_orange_cones)))
       _big_orange_cones)))
  (:unknown_color_cones
   (&rest __unknown_color_cones)
   (if (keywordp (car __unknown_color_cones))
       (send* _unknown_color_cones __unknown_color_cones)
     (progn
       (if __unknown_color_cones (setq _unknown_color_cones (car __unknown_color_cones)))
       _unknown_color_cones)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; eufs_msgs/ConeWithCovariance[] _blue_cones
    (apply #'+ (send-all _blue_cones :serialization-length)) 4
    ;; eufs_msgs/ConeWithCovariance[] _yellow_cones
    (apply #'+ (send-all _yellow_cones :serialization-length)) 4
    ;; eufs_msgs/ConeWithCovariance[] _orange_cones
    (apply #'+ (send-all _orange_cones :serialization-length)) 4
    ;; eufs_msgs/ConeWithCovariance[] _big_orange_cones
    (apply #'+ (send-all _big_orange_cones :serialization-length)) 4
    ;; eufs_msgs/ConeWithCovariance[] _unknown_color_cones
    (apply #'+ (send-all _unknown_color_cones :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; eufs_msgs/ConeWithCovariance[] _blue_cones
     (write-long (length _blue_cones) s)
     (dolist (elem _blue_cones)
       (send elem :serialize s)
       )
     ;; eufs_msgs/ConeWithCovariance[] _yellow_cones
     (write-long (length _yellow_cones) s)
     (dolist (elem _yellow_cones)
       (send elem :serialize s)
       )
     ;; eufs_msgs/ConeWithCovariance[] _orange_cones
     (write-long (length _orange_cones) s)
     (dolist (elem _orange_cones)
       (send elem :serialize s)
       )
     ;; eufs_msgs/ConeWithCovariance[] _big_orange_cones
     (write-long (length _big_orange_cones) s)
     (dolist (elem _big_orange_cones)
       (send elem :serialize s)
       )
     ;; eufs_msgs/ConeWithCovariance[] _unknown_color_cones
     (write-long (length _unknown_color_cones) s)
     (dolist (elem _unknown_color_cones)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; eufs_msgs/ConeWithCovariance[] _blue_cones
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _blue_cones (let (r) (dotimes (i n) (push (instance eufs_msgs::ConeWithCovariance :init) r)) r))
     (dolist (elem- _blue_cones)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; eufs_msgs/ConeWithCovariance[] _yellow_cones
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _yellow_cones (let (r) (dotimes (i n) (push (instance eufs_msgs::ConeWithCovariance :init) r)) r))
     (dolist (elem- _yellow_cones)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; eufs_msgs/ConeWithCovariance[] _orange_cones
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _orange_cones (let (r) (dotimes (i n) (push (instance eufs_msgs::ConeWithCovariance :init) r)) r))
     (dolist (elem- _orange_cones)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; eufs_msgs/ConeWithCovariance[] _big_orange_cones
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _big_orange_cones (let (r) (dotimes (i n) (push (instance eufs_msgs::ConeWithCovariance :init) r)) r))
     (dolist (elem- _big_orange_cones)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; eufs_msgs/ConeWithCovariance[] _unknown_color_cones
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _unknown_color_cones (let (r) (dotimes (i n) (push (instance eufs_msgs::ConeWithCovariance :init) r)) r))
     (dolist (elem- _unknown_color_cones)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get eufs_msgs::ConeArrayWithCovariance :md5sum-) "e5f10da6162fc97ab08945c47837cb2d")
(setf (get eufs_msgs::ConeArrayWithCovariance :datatype-) "eufs_msgs/ConeArrayWithCovariance")
(setf (get eufs_msgs::ConeArrayWithCovariance :definition-)
      "#Array of 2D cone locations (z = 0) with covariances

Header header

ConeWithCovariance[] blue_cones
ConeWithCovariance[] yellow_cones
ConeWithCovariance[] orange_cones
ConeWithCovariance[] big_orange_cones
ConeWithCovariance[] unknown_color_cones

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
MSG: eufs_msgs/ConeWithCovariance
# Cone information

geometry_msgs/Point point
float64[4] covariance
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :eufs_msgs/ConeArrayWithCovariance "e5f10da6162fc97ab08945c47837cb2d")


