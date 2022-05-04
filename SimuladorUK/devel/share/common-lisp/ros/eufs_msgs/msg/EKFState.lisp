; Auto-generated. Do not edit!


(cl:in-package eufs_msgs-msg)


;//! \htmlinclude EKFState.msg.html

(cl:defclass <EKFState> (roslisp-msg-protocol:ros-message)
  ((gps_received
    :reader gps_received
    :initarg :gps_received
    :type cl:boolean
    :initform cl:nil)
   (imu_received
    :reader imu_received
    :initarg :imu_received
    :type cl:boolean
    :initform cl:nil)
   (wheel_odom_received
    :reader wheel_odom_received
    :initarg :wheel_odom_received
    :type cl:boolean
    :initform cl:nil)
   (ekf_odom_received
    :reader ekf_odom_received
    :initarg :ekf_odom_received
    :type cl:boolean
    :initform cl:nil)
   (ekf_accel_received
    :reader ekf_accel_received
    :initarg :ekf_accel_received
    :type cl:boolean
    :initform cl:nil)
   (currently_over_covariance_limit
    :reader currently_over_covariance_limit
    :initarg :currently_over_covariance_limit
    :type cl:boolean
    :initform cl:nil)
   (consecutive_turns_over_covariance_limit
    :reader consecutive_turns_over_covariance_limit
    :initarg :consecutive_turns_over_covariance_limit
    :type cl:boolean
    :initform cl:nil)
   (recommends_failure
    :reader recommends_failure
    :initarg :recommends_failure
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass EKFState (<EKFState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EKFState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EKFState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name eufs_msgs-msg:<EKFState> is deprecated: use eufs_msgs-msg:EKFState instead.")))

(cl:ensure-generic-function 'gps_received-val :lambda-list '(m))
(cl:defmethod gps_received-val ((m <EKFState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:gps_received-val is deprecated.  Use eufs_msgs-msg:gps_received instead.")
  (gps_received m))

(cl:ensure-generic-function 'imu_received-val :lambda-list '(m))
(cl:defmethod imu_received-val ((m <EKFState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:imu_received-val is deprecated.  Use eufs_msgs-msg:imu_received instead.")
  (imu_received m))

(cl:ensure-generic-function 'wheel_odom_received-val :lambda-list '(m))
(cl:defmethod wheel_odom_received-val ((m <EKFState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:wheel_odom_received-val is deprecated.  Use eufs_msgs-msg:wheel_odom_received instead.")
  (wheel_odom_received m))

(cl:ensure-generic-function 'ekf_odom_received-val :lambda-list '(m))
(cl:defmethod ekf_odom_received-val ((m <EKFState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:ekf_odom_received-val is deprecated.  Use eufs_msgs-msg:ekf_odom_received instead.")
  (ekf_odom_received m))

(cl:ensure-generic-function 'ekf_accel_received-val :lambda-list '(m))
(cl:defmethod ekf_accel_received-val ((m <EKFState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:ekf_accel_received-val is deprecated.  Use eufs_msgs-msg:ekf_accel_received instead.")
  (ekf_accel_received m))

(cl:ensure-generic-function 'currently_over_covariance_limit-val :lambda-list '(m))
(cl:defmethod currently_over_covariance_limit-val ((m <EKFState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:currently_over_covariance_limit-val is deprecated.  Use eufs_msgs-msg:currently_over_covariance_limit instead.")
  (currently_over_covariance_limit m))

(cl:ensure-generic-function 'consecutive_turns_over_covariance_limit-val :lambda-list '(m))
(cl:defmethod consecutive_turns_over_covariance_limit-val ((m <EKFState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:consecutive_turns_over_covariance_limit-val is deprecated.  Use eufs_msgs-msg:consecutive_turns_over_covariance_limit instead.")
  (consecutive_turns_over_covariance_limit m))

(cl:ensure-generic-function 'recommends_failure-val :lambda-list '(m))
(cl:defmethod recommends_failure-val ((m <EKFState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:recommends_failure-val is deprecated.  Use eufs_msgs-msg:recommends_failure instead.")
  (recommends_failure m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EKFState>) ostream)
  "Serializes a message object of type '<EKFState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gps_received) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'imu_received) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wheel_odom_received) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ekf_odom_received) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ekf_accel_received) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'currently_over_covariance_limit) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'consecutive_turns_over_covariance_limit) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'recommends_failure) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EKFState>) istream)
  "Deserializes a message object of type '<EKFState>"
    (cl:setf (cl:slot-value msg 'gps_received) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'imu_received) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'wheel_odom_received) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ekf_odom_received) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ekf_accel_received) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'currently_over_covariance_limit) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'consecutive_turns_over_covariance_limit) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'recommends_failure) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EKFState>)))
  "Returns string type for a message object of type '<EKFState>"
  "eufs_msgs/EKFState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EKFState)))
  "Returns string type for a message object of type 'EKFState"
  "eufs_msgs/EKFState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EKFState>)))
  "Returns md5sum for a message object of type '<EKFState>"
  "08d63999f28c68f92f4728fef441c767")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EKFState)))
  "Returns md5sum for a message object of type 'EKFState"
  "08d63999f28c68f92f4728fef441c767")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EKFState>)))
  "Returns full string definition for message of type '<EKFState>"
  (cl:format cl:nil "# This message contains information about the state of the EKF~%# and is meant for use by the state monitor to ensure the EKF~%# isn't failing.~%~%bool gps_received~%bool imu_received~%bool wheel_odom_received~%~%bool ekf_odom_received~%bool ekf_accel_received~%~%bool currently_over_covariance_limit~%bool consecutive_turns_over_covariance_limit~%~%bool recommends_failure~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EKFState)))
  "Returns full string definition for message of type 'EKFState"
  (cl:format cl:nil "# This message contains information about the state of the EKF~%# and is meant for use by the state monitor to ensure the EKF~%# isn't failing.~%~%bool gps_received~%bool imu_received~%bool wheel_odom_received~%~%bool ekf_odom_received~%bool ekf_accel_received~%~%bool currently_over_covariance_limit~%bool consecutive_turns_over_covariance_limit~%~%bool recommends_failure~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EKFState>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EKFState>))
  "Converts a ROS message object to a list"
  (cl:list 'EKFState
    (cl:cons ':gps_received (gps_received msg))
    (cl:cons ':imu_received (imu_received msg))
    (cl:cons ':wheel_odom_received (wheel_odom_received msg))
    (cl:cons ':ekf_odom_received (ekf_odom_received msg))
    (cl:cons ':ekf_accel_received (ekf_accel_received msg))
    (cl:cons ':currently_over_covariance_limit (currently_over_covariance_limit msg))
    (cl:cons ':consecutive_turns_over_covariance_limit (consecutive_turns_over_covariance_limit msg))
    (cl:cons ':recommends_failure (recommends_failure msg))
))
