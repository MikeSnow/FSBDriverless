; Auto-generated. Do not edit!


(cl:in-package eufs_msgs-msg)


;//! \htmlinclude WheelSpeeds.msg.html

(cl:defclass <WheelSpeeds> (roslisp-msg-protocol:ros-message)
  ((steering
    :reader steering
    :initarg :steering
    :type cl:float
    :initform 0.0)
   (lf_speed
    :reader lf_speed
    :initarg :lf_speed
    :type cl:float
    :initform 0.0)
   (rf_speed
    :reader rf_speed
    :initarg :rf_speed
    :type cl:float
    :initform 0.0)
   (lb_speed
    :reader lb_speed
    :initarg :lb_speed
    :type cl:float
    :initform 0.0)
   (rb_speed
    :reader rb_speed
    :initarg :rb_speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass WheelSpeeds (<WheelSpeeds>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelSpeeds>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelSpeeds)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name eufs_msgs-msg:<WheelSpeeds> is deprecated: use eufs_msgs-msg:WheelSpeeds instead.")))

(cl:ensure-generic-function 'steering-val :lambda-list '(m))
(cl:defmethod steering-val ((m <WheelSpeeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:steering-val is deprecated.  Use eufs_msgs-msg:steering instead.")
  (steering m))

(cl:ensure-generic-function 'lf_speed-val :lambda-list '(m))
(cl:defmethod lf_speed-val ((m <WheelSpeeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:lf_speed-val is deprecated.  Use eufs_msgs-msg:lf_speed instead.")
  (lf_speed m))

(cl:ensure-generic-function 'rf_speed-val :lambda-list '(m))
(cl:defmethod rf_speed-val ((m <WheelSpeeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:rf_speed-val is deprecated.  Use eufs_msgs-msg:rf_speed instead.")
  (rf_speed m))

(cl:ensure-generic-function 'lb_speed-val :lambda-list '(m))
(cl:defmethod lb_speed-val ((m <WheelSpeeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:lb_speed-val is deprecated.  Use eufs_msgs-msg:lb_speed instead.")
  (lb_speed m))

(cl:ensure-generic-function 'rb_speed-val :lambda-list '(m))
(cl:defmethod rb_speed-val ((m <WheelSpeeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:rb_speed-val is deprecated.  Use eufs_msgs-msg:rb_speed instead.")
  (rb_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelSpeeds>) ostream)
  "Serializes a message object of type '<WheelSpeeds>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lf_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rf_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lb_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rb_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelSpeeds>) istream)
  "Deserializes a message object of type '<WheelSpeeds>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lf_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rf_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lb_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rb_speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelSpeeds>)))
  "Returns string type for a message object of type '<WheelSpeeds>"
  "eufs_msgs/WheelSpeeds")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelSpeeds)))
  "Returns string type for a message object of type 'WheelSpeeds"
  "eufs_msgs/WheelSpeeds")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelSpeeds>)))
  "Returns md5sum for a message object of type '<WheelSpeeds>"
  "032f31bfd4ad524fa752e1644fb5e2ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelSpeeds)))
  "Returns md5sum for a message object of type 'WheelSpeeds"
  "032f31bfd4ad524fa752e1644fb5e2ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelSpeeds>)))
  "Returns full string definition for message of type '<WheelSpeeds>"
  (cl:format cl:nil "float32 steering~%float32 lf_speed~%float32 rf_speed~%float32 lb_speed~%float32 rb_speed~%~%# Steering is in radians~%# Speeds are in RPM~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelSpeeds)))
  "Returns full string definition for message of type 'WheelSpeeds"
  (cl:format cl:nil "float32 steering~%float32 lf_speed~%float32 rf_speed~%float32 lb_speed~%float32 rb_speed~%~%# Steering is in radians~%# Speeds are in RPM~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelSpeeds>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelSpeeds>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelSpeeds
    (cl:cons ':steering (steering msg))
    (cl:cons ':lf_speed (lf_speed msg))
    (cl:cons ':rf_speed (rf_speed msg))
    (cl:cons ':lb_speed (lb_speed msg))
    (cl:cons ':rb_speed (rb_speed msg))
))
