; Auto-generated. Do not edit!


(cl:in-package eufs_msgs-msg)


;//! \htmlinclude ChassisState.msg.html

(cl:defclass <ChassisState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (throttle_relay_enabled
    :reader throttle_relay_enabled
    :initarg :throttle_relay_enabled
    :type cl:boolean
    :initform cl:nil)
   (autonomous_enabled
    :reader autonomous_enabled
    :initarg :autonomous_enabled
    :type cl:boolean
    :initform cl:nil)
   (runstop_motion_enabled
    :reader runstop_motion_enabled
    :initarg :runstop_motion_enabled
    :type cl:boolean
    :initform cl:nil)
   (steering_commander
    :reader steering_commander
    :initarg :steering_commander
    :type cl:string
    :initform "")
   (steering
    :reader steering
    :initarg :steering
    :type cl:float
    :initform 0.0)
   (throttle_commander
    :reader throttle_commander
    :initarg :throttle_commander
    :type cl:string
    :initform "")
   (throttle
    :reader throttle
    :initarg :throttle
    :type cl:float
    :initform 0.0)
   (front_brake_commander
    :reader front_brake_commander
    :initarg :front_brake_commander
    :type cl:string
    :initform "")
   (front_brake
    :reader front_brake
    :initarg :front_brake
    :type cl:float
    :initform 0.0))
)

(cl:defclass ChassisState (<ChassisState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChassisState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChassisState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name eufs_msgs-msg:<ChassisState> is deprecated: use eufs_msgs-msg:ChassisState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ChassisState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:header-val is deprecated.  Use eufs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'throttle_relay_enabled-val :lambda-list '(m))
(cl:defmethod throttle_relay_enabled-val ((m <ChassisState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:throttle_relay_enabled-val is deprecated.  Use eufs_msgs-msg:throttle_relay_enabled instead.")
  (throttle_relay_enabled m))

(cl:ensure-generic-function 'autonomous_enabled-val :lambda-list '(m))
(cl:defmethod autonomous_enabled-val ((m <ChassisState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:autonomous_enabled-val is deprecated.  Use eufs_msgs-msg:autonomous_enabled instead.")
  (autonomous_enabled m))

(cl:ensure-generic-function 'runstop_motion_enabled-val :lambda-list '(m))
(cl:defmethod runstop_motion_enabled-val ((m <ChassisState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:runstop_motion_enabled-val is deprecated.  Use eufs_msgs-msg:runstop_motion_enabled instead.")
  (runstop_motion_enabled m))

(cl:ensure-generic-function 'steering_commander-val :lambda-list '(m))
(cl:defmethod steering_commander-val ((m <ChassisState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:steering_commander-val is deprecated.  Use eufs_msgs-msg:steering_commander instead.")
  (steering_commander m))

(cl:ensure-generic-function 'steering-val :lambda-list '(m))
(cl:defmethod steering-val ((m <ChassisState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:steering-val is deprecated.  Use eufs_msgs-msg:steering instead.")
  (steering m))

(cl:ensure-generic-function 'throttle_commander-val :lambda-list '(m))
(cl:defmethod throttle_commander-val ((m <ChassisState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:throttle_commander-val is deprecated.  Use eufs_msgs-msg:throttle_commander instead.")
  (throttle_commander m))

(cl:ensure-generic-function 'throttle-val :lambda-list '(m))
(cl:defmethod throttle-val ((m <ChassisState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:throttle-val is deprecated.  Use eufs_msgs-msg:throttle instead.")
  (throttle m))

(cl:ensure-generic-function 'front_brake_commander-val :lambda-list '(m))
(cl:defmethod front_brake_commander-val ((m <ChassisState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:front_brake_commander-val is deprecated.  Use eufs_msgs-msg:front_brake_commander instead.")
  (front_brake_commander m))

(cl:ensure-generic-function 'front_brake-val :lambda-list '(m))
(cl:defmethod front_brake-val ((m <ChassisState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:front_brake-val is deprecated.  Use eufs_msgs-msg:front_brake instead.")
  (front_brake m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChassisState>) ostream)
  "Serializes a message object of type '<ChassisState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'throttle_relay_enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'autonomous_enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'runstop_motion_enabled) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'steering_commander))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'steering_commander))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steering))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'throttle_commander))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'throttle_commander))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'throttle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'front_brake_commander))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'front_brake_commander))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'front_brake))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChassisState>) istream)
  "Deserializes a message object of type '<ChassisState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'throttle_relay_enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'autonomous_enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'runstop_motion_enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'steering_commander) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'steering_commander) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'throttle_commander) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'throttle_commander) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'front_brake_commander) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'front_brake_commander) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_brake) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChassisState>)))
  "Returns string type for a message object of type '<ChassisState>"
  "eufs_msgs/ChassisState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChassisState)))
  "Returns string type for a message object of type 'ChassisState"
  "eufs_msgs/ChassisState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChassisState>)))
  "Returns md5sum for a message object of type '<ChassisState>"
  "94f504003a2d58582928e8e48a2519db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChassisState)))
  "Returns md5sum for a message object of type 'ChassisState"
  "94f504003a2d58582928e8e48a2519db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChassisState>)))
  "Returns full string definition for message of type '<ChassisState>"
  (cl:format cl:nil "Header header~%~%bool throttle_relay_enabled~%bool autonomous_enabled~%bool runstop_motion_enabled~%~%string steering_commander~%float64 steering~%~%string throttle_commander~%float64 throttle~%~%string front_brake_commander~%float64 front_brake~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChassisState)))
  "Returns full string definition for message of type 'ChassisState"
  (cl:format cl:nil "Header header~%~%bool throttle_relay_enabled~%bool autonomous_enabled~%bool runstop_motion_enabled~%~%string steering_commander~%float64 steering~%~%string throttle_commander~%float64 throttle~%~%string front_brake_commander~%float64 front_brake~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChassisState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'steering_commander))
     8
     4 (cl:length (cl:slot-value msg 'throttle_commander))
     8
     4 (cl:length (cl:slot-value msg 'front_brake_commander))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChassisState>))
  "Converts a ROS message object to a list"
  (cl:list 'ChassisState
    (cl:cons ':header (header msg))
    (cl:cons ':throttle_relay_enabled (throttle_relay_enabled msg))
    (cl:cons ':autonomous_enabled (autonomous_enabled msg))
    (cl:cons ':runstop_motion_enabled (runstop_motion_enabled msg))
    (cl:cons ':steering_commander (steering_commander msg))
    (cl:cons ':steering (steering msg))
    (cl:cons ':throttle_commander (throttle_commander msg))
    (cl:cons ':throttle (throttle msg))
    (cl:cons ':front_brake_commander (front_brake_commander msg))
    (cl:cons ':front_brake (front_brake msg))
))
