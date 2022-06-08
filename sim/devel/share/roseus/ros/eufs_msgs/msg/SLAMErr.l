;; Auto-generated. Do not edit!


(when (boundp 'eufs_msgs::SLAMErr)
  (if (not (find-package "EUFS_MSGS"))
    (make-package "EUFS_MSGS"))
  (shadow 'SLAMErr (find-package "EUFS_MSGS")))
(unless (find-package "EUFS_MSGS::SLAMERR")
  (make-package "EUFS_MSGS::SLAMERR"))

(in-package "ROS")
;;//! \htmlinclude SLAMErr.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass eufs_msgs::SLAMErr
  :super ros::object
  :slots (_header _x_err _y_err _z_err _x_orient_err _y_orient_err _z_orient_err _w_orient_err _map_similarity ))

(defmethod eufs_msgs::SLAMErr
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:x_err __x_err) 0.0)
    ((:y_err __y_err) 0.0)
    ((:z_err __z_err) 0.0)
    ((:x_orient_err __x_orient_err) 0.0)
    ((:y_orient_err __y_orient_err) 0.0)
    ((:z_orient_err __z_orient_err) 0.0)
    ((:w_orient_err __w_orient_err) 0.0)
    ((:map_similarity __map_similarity) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _x_err (float __x_err))
   (setq _y_err (float __y_err))
   (setq _z_err (float __z_err))
   (setq _x_orient_err (float __x_orient_err))
   (setq _y_orient_err (float __y_orient_err))
   (setq _z_orient_err (float __z_orient_err))
   (setq _w_orient_err (float __w_orient_err))
   (setq _map_similarity (float __map_similarity))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:x_err
   (&optional __x_err)
   (if __x_err (setq _x_err __x_err)) _x_err)
  (:y_err
   (&optional __y_err)
   (if __y_err (setq _y_err __y_err)) _y_err)
  (:z_err
   (&optional __z_err)
   (if __z_err (setq _z_err __z_err)) _z_err)
  (:x_orient_err
   (&optional __x_orient_err)
   (if __x_orient_err (setq _x_orient_err __x_orient_err)) _x_orient_err)
  (:y_orient_err
   (&optional __y_orient_err)
   (if __y_orient_err (setq _y_orient_err __y_orient_err)) _y_orient_err)
  (:z_orient_err
   (&optional __z_orient_err)
   (if __z_orient_err (setq _z_orient_err __z_orient_err)) _z_orient_err)
  (:w_orient_err
   (&optional __w_orient_err)
   (if __w_orient_err (setq _w_orient_err __w_orient_err)) _w_orient_err)
  (:map_similarity
   (&optional __map_similarity)
   (if __map_similarity (setq _map_similarity __map_similarity)) _map_similarity)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _x_err
    8
    ;; float64 _y_err
    8
    ;; float64 _z_err
    8
    ;; float64 _x_orient_err
    8
    ;; float64 _y_orient_err
    8
    ;; float64 _z_orient_err
    8
    ;; float64 _w_orient_err
    8
    ;; float64 _map_similarity
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _x_err
       (sys::poke _x_err (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_err
       (sys::poke _y_err (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z_err
       (sys::poke _z_err (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x_orient_err
       (sys::poke _x_orient_err (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_orient_err
       (sys::poke _y_orient_err (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z_orient_err
       (sys::poke _z_orient_err (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _w_orient_err
       (sys::poke _w_orient_err (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _map_similarity
       (sys::poke _map_similarity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _x_err
     (setq _x_err (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_err
     (setq _y_err (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z_err
     (setq _z_err (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x_orient_err
     (setq _x_orient_err (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_orient_err
     (setq _y_orient_err (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z_orient_err
     (setq _z_orient_err (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _w_orient_err
     (setq _w_orient_err (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _map_similarity
     (setq _map_similarity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get eufs_msgs::SLAMErr :md5sum-) "dc71d228c77971f0462d47d101a48d17")
(setf (get eufs_msgs::SLAMErr :datatype-) "eufs_msgs/SLAMErr")
(setf (get eufs_msgs::SLAMErr :definition-)
      "# Message for the error of our SLAM algorithm. All of them are based on euclidean distances, besides the map similarity,
# which can be interpreted as a percentage of how well our algorithm describes the map.

Header header

float64 x_err
float64 y_err
float64 z_err
float64 x_orient_err
float64 y_orient_err
float64 z_orient_err
float64 w_orient_err
float64 map_similarity

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



(provide :eufs_msgs/SLAMErr "dc71d228c77971f0462d47d101a48d17")


