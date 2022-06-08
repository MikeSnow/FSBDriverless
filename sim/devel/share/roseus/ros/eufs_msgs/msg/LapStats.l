;; Auto-generated. Do not edit!


(when (boundp 'eufs_msgs::LapStats)
  (if (not (find-package "EUFS_MSGS"))
    (make-package "EUFS_MSGS"))
  (shadow 'LapStats (find-package "EUFS_MSGS")))
(unless (find-package "EUFS_MSGS::LAPSTATS")
  (make-package "EUFS_MSGS::LAPSTATS"))

(in-package "ROS")
;;//! \htmlinclude LapStats.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass eufs_msgs::LapStats
  :super ros::object
  :slots (_header _lap_number _lap_time _avg_speed _max_speed _max_slip _max_lateral_accel ))

(defmethod eufs_msgs::LapStats
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lap_number __lap_number) 0)
    ((:lap_time __lap_time) 0.0)
    ((:avg_speed __avg_speed) 0.0)
    ((:max_speed __max_speed) 0.0)
    ((:max_slip __max_slip) 0.0)
    ((:max_lateral_accel __max_lateral_accel) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _lap_number (round __lap_number))
   (setq _lap_time (float __lap_time))
   (setq _avg_speed (float __avg_speed))
   (setq _max_speed (float __max_speed))
   (setq _max_slip (float __max_slip))
   (setq _max_lateral_accel (float __max_lateral_accel))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lap_number
   (&optional __lap_number)
   (if __lap_number (setq _lap_number __lap_number)) _lap_number)
  (:lap_time
   (&optional __lap_time)
   (if __lap_time (setq _lap_time __lap_time)) _lap_time)
  (:avg_speed
   (&optional __avg_speed)
   (if __avg_speed (setq _avg_speed __avg_speed)) _avg_speed)
  (:max_speed
   (&optional __max_speed)
   (if __max_speed (setq _max_speed __max_speed)) _max_speed)
  (:max_slip
   (&optional __max_slip)
   (if __max_slip (setq _max_slip __max_slip)) _max_slip)
  (:max_lateral_accel
   (&optional __max_lateral_accel)
   (if __max_lateral_accel (setq _max_lateral_accel __max_lateral_accel)) _max_lateral_accel)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int64 _lap_number
    8
    ;; float64 _lap_time
    8
    ;; float64 _avg_speed
    8
    ;; float64 _max_speed
    8
    ;; float64 _max_slip
    8
    ;; float64 _max_lateral_accel
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int64 _lap_number
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _lap_number (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _lap_number) (= (length (_lap_number . bv)) 2)) ;; bignum
              (write-long (ash (elt (_lap_number . bv) 0) 0) s)
              (write-long (ash (elt (_lap_number . bv) 1) -1) s))
             ((and (class _lap_number) (= (length (_lap_number . bv)) 1)) ;; big1
              (write-long (elt (_lap_number . bv) 0) s)
              (write-long (if (>= _lap_number 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _lap_number s)(write-long (if (>= _lap_number 0) 0 #xffffffff) s)))
     ;; float64 _lap_time
       (sys::poke _lap_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _avg_speed
       (sys::poke _avg_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_speed
       (sys::poke _max_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_slip
       (sys::poke _max_slip (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_lateral_accel
       (sys::poke _max_lateral_accel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int64 _lap_number
#+(or :alpha :irix6 :x86_64)
      (setf _lap_number (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _lap_number (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _lap_time
     (setq _lap_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _avg_speed
     (setq _avg_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_speed
     (setq _max_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_slip
     (setq _max_slip (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_lateral_accel
     (setq _max_lateral_accel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get eufs_msgs::LapStats :md5sum-) "9f369797be29dfdde2a9c9d2a24f1d1a")
(setf (get eufs_msgs::LapStats :datatype-) "eufs_msgs/LapStats")
(setf (get eufs_msgs::LapStats :definition-)
      "Header header

int64 lap_number
float64 lap_time
float64 avg_speed
float64 max_speed
float64 max_slip
float64 max_lateral_accel

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



(provide :eufs_msgs/LapStats "9f369797be29dfdde2a9c9d2a24f1d1a")


