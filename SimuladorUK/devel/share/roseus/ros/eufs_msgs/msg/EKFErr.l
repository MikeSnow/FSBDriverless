;; Auto-generated. Do not edit!


(when (boundp 'eufs_msgs::EKFErr)
  (if (not (find-package "EUFS_MSGS"))
    (make-package "EUFS_MSGS"))
  (shadow 'EKFErr (find-package "EUFS_MSGS")))
(unless (find-package "EUFS_MSGS::EKFERR")
  (make-package "EUFS_MSGS::EKFERR"))

(in-package "ROS")
;;//! \htmlinclude EKFErr.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass eufs_msgs::EKFErr
  :super ros::object
  :slots (_header _gps_x_vel_err _gps_y_vel_err _imu_x_acc_err _imu_y_acc_err _imu_yaw_err _ekf_x_vel_var _ekf_y_vel_var _ekf_x_acc_var _ekf_y_acc_var _ekf_yaw_var ))

(defmethod eufs_msgs::EKFErr
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gps_x_vel_err __gps_x_vel_err) 0.0)
    ((:gps_y_vel_err __gps_y_vel_err) 0.0)
    ((:imu_x_acc_err __imu_x_acc_err) 0.0)
    ((:imu_y_acc_err __imu_y_acc_err) 0.0)
    ((:imu_yaw_err __imu_yaw_err) 0.0)
    ((:ekf_x_vel_var __ekf_x_vel_var) 0.0)
    ((:ekf_y_vel_var __ekf_y_vel_var) 0.0)
    ((:ekf_x_acc_var __ekf_x_acc_var) 0.0)
    ((:ekf_y_acc_var __ekf_y_acc_var) 0.0)
    ((:ekf_yaw_var __ekf_yaw_var) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _gps_x_vel_err (float __gps_x_vel_err))
   (setq _gps_y_vel_err (float __gps_y_vel_err))
   (setq _imu_x_acc_err (float __imu_x_acc_err))
   (setq _imu_y_acc_err (float __imu_y_acc_err))
   (setq _imu_yaw_err (float __imu_yaw_err))
   (setq _ekf_x_vel_var (float __ekf_x_vel_var))
   (setq _ekf_y_vel_var (float __ekf_y_vel_var))
   (setq _ekf_x_acc_var (float __ekf_x_acc_var))
   (setq _ekf_y_acc_var (float __ekf_y_acc_var))
   (setq _ekf_yaw_var (float __ekf_yaw_var))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:gps_x_vel_err
   (&optional __gps_x_vel_err)
   (if __gps_x_vel_err (setq _gps_x_vel_err __gps_x_vel_err)) _gps_x_vel_err)
  (:gps_y_vel_err
   (&optional __gps_y_vel_err)
   (if __gps_y_vel_err (setq _gps_y_vel_err __gps_y_vel_err)) _gps_y_vel_err)
  (:imu_x_acc_err
   (&optional __imu_x_acc_err)
   (if __imu_x_acc_err (setq _imu_x_acc_err __imu_x_acc_err)) _imu_x_acc_err)
  (:imu_y_acc_err
   (&optional __imu_y_acc_err)
   (if __imu_y_acc_err (setq _imu_y_acc_err __imu_y_acc_err)) _imu_y_acc_err)
  (:imu_yaw_err
   (&optional __imu_yaw_err)
   (if __imu_yaw_err (setq _imu_yaw_err __imu_yaw_err)) _imu_yaw_err)
  (:ekf_x_vel_var
   (&optional __ekf_x_vel_var)
   (if __ekf_x_vel_var (setq _ekf_x_vel_var __ekf_x_vel_var)) _ekf_x_vel_var)
  (:ekf_y_vel_var
   (&optional __ekf_y_vel_var)
   (if __ekf_y_vel_var (setq _ekf_y_vel_var __ekf_y_vel_var)) _ekf_y_vel_var)
  (:ekf_x_acc_var
   (&optional __ekf_x_acc_var)
   (if __ekf_x_acc_var (setq _ekf_x_acc_var __ekf_x_acc_var)) _ekf_x_acc_var)
  (:ekf_y_acc_var
   (&optional __ekf_y_acc_var)
   (if __ekf_y_acc_var (setq _ekf_y_acc_var __ekf_y_acc_var)) _ekf_y_acc_var)
  (:ekf_yaw_var
   (&optional __ekf_yaw_var)
   (if __ekf_yaw_var (setq _ekf_yaw_var __ekf_yaw_var)) _ekf_yaw_var)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _gps_x_vel_err
    8
    ;; float64 _gps_y_vel_err
    8
    ;; float64 _imu_x_acc_err
    8
    ;; float64 _imu_y_acc_err
    8
    ;; float64 _imu_yaw_err
    8
    ;; float64 _ekf_x_vel_var
    8
    ;; float64 _ekf_y_vel_var
    8
    ;; float64 _ekf_x_acc_var
    8
    ;; float64 _ekf_y_acc_var
    8
    ;; float64 _ekf_yaw_var
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _gps_x_vel_err
       (sys::poke _gps_x_vel_err (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gps_y_vel_err
       (sys::poke _gps_y_vel_err (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_x_acc_err
       (sys::poke _imu_x_acc_err (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_y_acc_err
       (sys::poke _imu_y_acc_err (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_yaw_err
       (sys::poke _imu_yaw_err (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ekf_x_vel_var
       (sys::poke _ekf_x_vel_var (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ekf_y_vel_var
       (sys::poke _ekf_y_vel_var (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ekf_x_acc_var
       (sys::poke _ekf_x_acc_var (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ekf_y_acc_var
       (sys::poke _ekf_y_acc_var (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ekf_yaw_var
       (sys::poke _ekf_yaw_var (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _gps_x_vel_err
     (setq _gps_x_vel_err (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gps_y_vel_err
     (setq _gps_y_vel_err (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_x_acc_err
     (setq _imu_x_acc_err (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_y_acc_err
     (setq _imu_y_acc_err (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_yaw_err
     (setq _imu_yaw_err (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ekf_x_vel_var
     (setq _ekf_x_vel_var (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ekf_y_vel_var
     (setq _ekf_y_vel_var (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ekf_x_acc_var
     (setq _ekf_x_acc_var (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ekf_y_acc_var
     (setq _ekf_y_acc_var (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ekf_yaw_var
     (setq _ekf_yaw_var (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get eufs_msgs::EKFErr :md5sum-) "183f1bb90ac72a6c9c108dee51aba1c8")
(setf (get eufs_msgs::EKFErr :datatype-) "eufs_msgs/EKFErr")
(setf (get eufs_msgs::EKFErr :definition-)
      "# Message for the error of the EKF. All of them are based on euclidean distances.
Header header

float64 gps_x_vel_err
float64 gps_y_vel_err
float64 imu_x_acc_err
float64 imu_y_acc_err
float64 imu_yaw_err
float64 ekf_x_vel_var
float64 ekf_y_vel_var
float64 ekf_x_acc_var
float64 ekf_y_acc_var
float64 ekf_yaw_var

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



(provide :eufs_msgs/EKFErr "183f1bb90ac72a6c9c108dee51aba1c8")


