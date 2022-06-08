;; Auto-generated. Do not edit!


(when (boundp 'eufs_msgs::EKFState)
  (if (not (find-package "EUFS_MSGS"))
    (make-package "EUFS_MSGS"))
  (shadow 'EKFState (find-package "EUFS_MSGS")))
(unless (find-package "EUFS_MSGS::EKFSTATE")
  (make-package "EUFS_MSGS::EKFSTATE"))

(in-package "ROS")
;;//! \htmlinclude EKFState.msg.html


(defclass eufs_msgs::EKFState
  :super ros::object
  :slots (_gps_received _imu_received _wheel_odom_received _ekf_odom_received _ekf_accel_received _currently_over_covariance_limit _consecutive_turns_over_covariance_limit _recommends_failure ))

(defmethod eufs_msgs::EKFState
  (:init
   (&key
    ((:gps_received __gps_received) nil)
    ((:imu_received __imu_received) nil)
    ((:wheel_odom_received __wheel_odom_received) nil)
    ((:ekf_odom_received __ekf_odom_received) nil)
    ((:ekf_accel_received __ekf_accel_received) nil)
    ((:currently_over_covariance_limit __currently_over_covariance_limit) nil)
    ((:consecutive_turns_over_covariance_limit __consecutive_turns_over_covariance_limit) nil)
    ((:recommends_failure __recommends_failure) nil)
    )
   (send-super :init)
   (setq _gps_received __gps_received)
   (setq _imu_received __imu_received)
   (setq _wheel_odom_received __wheel_odom_received)
   (setq _ekf_odom_received __ekf_odom_received)
   (setq _ekf_accel_received __ekf_accel_received)
   (setq _currently_over_covariance_limit __currently_over_covariance_limit)
   (setq _consecutive_turns_over_covariance_limit __consecutive_turns_over_covariance_limit)
   (setq _recommends_failure __recommends_failure)
   self)
  (:gps_received
   (&optional __gps_received)
   (if __gps_received (setq _gps_received __gps_received)) _gps_received)
  (:imu_received
   (&optional __imu_received)
   (if __imu_received (setq _imu_received __imu_received)) _imu_received)
  (:wheel_odom_received
   (&optional __wheel_odom_received)
   (if __wheel_odom_received (setq _wheel_odom_received __wheel_odom_received)) _wheel_odom_received)
  (:ekf_odom_received
   (&optional __ekf_odom_received)
   (if __ekf_odom_received (setq _ekf_odom_received __ekf_odom_received)) _ekf_odom_received)
  (:ekf_accel_received
   (&optional __ekf_accel_received)
   (if __ekf_accel_received (setq _ekf_accel_received __ekf_accel_received)) _ekf_accel_received)
  (:currently_over_covariance_limit
   (&optional __currently_over_covariance_limit)
   (if __currently_over_covariance_limit (setq _currently_over_covariance_limit __currently_over_covariance_limit)) _currently_over_covariance_limit)
  (:consecutive_turns_over_covariance_limit
   (&optional __consecutive_turns_over_covariance_limit)
   (if __consecutive_turns_over_covariance_limit (setq _consecutive_turns_over_covariance_limit __consecutive_turns_over_covariance_limit)) _consecutive_turns_over_covariance_limit)
  (:recommends_failure
   (&optional __recommends_failure)
   (if __recommends_failure (setq _recommends_failure __recommends_failure)) _recommends_failure)
  (:serialization-length
   ()
   (+
    ;; bool _gps_received
    1
    ;; bool _imu_received
    1
    ;; bool _wheel_odom_received
    1
    ;; bool _ekf_odom_received
    1
    ;; bool _ekf_accel_received
    1
    ;; bool _currently_over_covariance_limit
    1
    ;; bool _consecutive_turns_over_covariance_limit
    1
    ;; bool _recommends_failure
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _gps_received
       (if _gps_received (write-byte -1 s) (write-byte 0 s))
     ;; bool _imu_received
       (if _imu_received (write-byte -1 s) (write-byte 0 s))
     ;; bool _wheel_odom_received
       (if _wheel_odom_received (write-byte -1 s) (write-byte 0 s))
     ;; bool _ekf_odom_received
       (if _ekf_odom_received (write-byte -1 s) (write-byte 0 s))
     ;; bool _ekf_accel_received
       (if _ekf_accel_received (write-byte -1 s) (write-byte 0 s))
     ;; bool _currently_over_covariance_limit
       (if _currently_over_covariance_limit (write-byte -1 s) (write-byte 0 s))
     ;; bool _consecutive_turns_over_covariance_limit
       (if _consecutive_turns_over_covariance_limit (write-byte -1 s) (write-byte 0 s))
     ;; bool _recommends_failure
       (if _recommends_failure (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _gps_received
     (setq _gps_received (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _imu_received
     (setq _imu_received (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _wheel_odom_received
     (setq _wheel_odom_received (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ekf_odom_received
     (setq _ekf_odom_received (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ekf_accel_received
     (setq _ekf_accel_received (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _currently_over_covariance_limit
     (setq _currently_over_covariance_limit (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _consecutive_turns_over_covariance_limit
     (setq _consecutive_turns_over_covariance_limit (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _recommends_failure
     (setq _recommends_failure (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get eufs_msgs::EKFState :md5sum-) "08d63999f28c68f92f4728fef441c767")
(setf (get eufs_msgs::EKFState :datatype-) "eufs_msgs/EKFState")
(setf (get eufs_msgs::EKFState :definition-)
      "# This message contains information about the state of the EKF
# and is meant for use by the state monitor to ensure the EKF
# isn't failing.

bool gps_received
bool imu_received
bool wheel_odom_received

bool ekf_odom_received
bool ekf_accel_received

bool currently_over_covariance_limit
bool consecutive_turns_over_covariance_limit

bool recommends_failure

")



(provide :eufs_msgs/EKFState "08d63999f28c68f92f4728fef441c767")


