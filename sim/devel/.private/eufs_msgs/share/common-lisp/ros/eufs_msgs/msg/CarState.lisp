; Auto-generated. Do not edit!


(cl:in-package eufs_msgs-msg)


;//! \htmlinclude CarState.msg.html

(cl:defclass <CarState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (child_frame_id
    :reader child_frame_id
    :initarg :child_frame_id
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovariance))
   (twist
    :reader twist
    :initarg :twist
    :type geometry_msgs-msg:TwistWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:TwistWithCovariance))
   (linear_acceleration
    :reader linear_acceleration
    :initarg :linear_acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (linear_acceleration_covariance
    :reader linear_acceleration_covariance
    :initarg :linear_acceleration_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (slip_angle
    :reader slip_angle
    :initarg :slip_angle
    :type cl:float
    :initform 0.0)
   (state_of_charge
    :reader state_of_charge
    :initarg :state_of_charge
    :type cl:float
    :initform 0.0))
)

(cl:defclass CarState (<CarState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name eufs_msgs-msg:<CarState> is deprecated: use eufs_msgs-msg:CarState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:header-val is deprecated.  Use eufs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'child_frame_id-val :lambda-list '(m))
(cl:defmethod child_frame_id-val ((m <CarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:child_frame_id-val is deprecated.  Use eufs_msgs-msg:child_frame_id instead.")
  (child_frame_id m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <CarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:pose-val is deprecated.  Use eufs_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'twist-val :lambda-list '(m))
(cl:defmethod twist-val ((m <CarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:twist-val is deprecated.  Use eufs_msgs-msg:twist instead.")
  (twist m))

(cl:ensure-generic-function 'linear_acceleration-val :lambda-list '(m))
(cl:defmethod linear_acceleration-val ((m <CarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:linear_acceleration-val is deprecated.  Use eufs_msgs-msg:linear_acceleration instead.")
  (linear_acceleration m))

(cl:ensure-generic-function 'linear_acceleration_covariance-val :lambda-list '(m))
(cl:defmethod linear_acceleration_covariance-val ((m <CarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:linear_acceleration_covariance-val is deprecated.  Use eufs_msgs-msg:linear_acceleration_covariance instead.")
  (linear_acceleration_covariance m))

(cl:ensure-generic-function 'slip_angle-val :lambda-list '(m))
(cl:defmethod slip_angle-val ((m <CarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:slip_angle-val is deprecated.  Use eufs_msgs-msg:slip_angle instead.")
  (slip_angle m))

(cl:ensure-generic-function 'state_of_charge-val :lambda-list '(m))
(cl:defmethod state_of_charge-val ((m <CarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:state_of_charge-val is deprecated.  Use eufs_msgs-msg:state_of_charge instead.")
  (state_of_charge m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarState>) ostream)
  "Serializes a message object of type '<CarState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'child_frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'child_frame_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_acceleration) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'linear_acceleration_covariance))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'slip_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'state_of_charge))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarState>) istream)
  "Deserializes a message object of type '<CarState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'child_frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'child_frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_acceleration) istream)
  (cl:setf (cl:slot-value msg 'linear_acceleration_covariance) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'linear_acceleration_covariance)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'slip_angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'state_of_charge) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarState>)))
  "Returns string type for a message object of type '<CarState>"
  "eufs_msgs/CarState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarState)))
  "Returns string type for a message object of type 'CarState"
  "eufs_msgs/CarState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarState>)))
  "Returns md5sum for a message object of type '<CarState>"
  "c0a0329e69455f31d0a4a61e5a702081")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarState)))
  "Returns md5sum for a message object of type 'CarState"
  "c0a0329e69455f31d0a4a61e5a702081")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarState>)))
  "Returns full string definition for message of type '<CarState>"
  (cl:format cl:nil "# This message includes both the kinematic and the dynamic state of the vehicle~%# All values are in SI units ~%Header header~%string child_frame_id # aka frame of the car~%~%# Kinematic State (x_k) in header frame ~%geometry_msgs/PoseWithCovariance pose ~%~%# Dynamic State (x_d) in child_frame_id~%geometry_msgs/TwistWithCovariance twist   # m/s~%geometry_msgs/Vector3 linear_acceleration # m/s^2~%float64[9] linear_acceleration_covariance # Row major x, y z in (m/s^2)~%float64 slip_angle~%~%# Metadata~%float64 state_of_charge # in Volts (V)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarState)))
  "Returns full string definition for message of type 'CarState"
  (cl:format cl:nil "# This message includes both the kinematic and the dynamic state of the vehicle~%# All values are in SI units ~%Header header~%string child_frame_id # aka frame of the car~%~%# Kinematic State (x_k) in header frame ~%geometry_msgs/PoseWithCovariance pose ~%~%# Dynamic State (x_d) in child_frame_id~%geometry_msgs/TwistWithCovariance twist   # m/s~%geometry_msgs/Vector3 linear_acceleration # m/s^2~%float64[9] linear_acceleration_covariance # Row major x, y z in (m/s^2)~%float64 slip_angle~%~%# Metadata~%float64 state_of_charge # in Volts (V)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'child_frame_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_acceleration))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'linear_acceleration_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarState>))
  "Converts a ROS message object to a list"
  (cl:list 'CarState
    (cl:cons ':header (header msg))
    (cl:cons ':child_frame_id (child_frame_id msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':twist (twist msg))
    (cl:cons ':linear_acceleration (linear_acceleration msg))
    (cl:cons ':linear_acceleration_covariance (linear_acceleration_covariance msg))
    (cl:cons ':slip_angle (slip_angle msg))
    (cl:cons ':state_of_charge (state_of_charge msg))
))
