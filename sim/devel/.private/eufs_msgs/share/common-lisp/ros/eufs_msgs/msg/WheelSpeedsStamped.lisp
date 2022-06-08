; Auto-generated. Do not edit!


(cl:in-package eufs_msgs-msg)


;//! \htmlinclude WheelSpeedsStamped.msg.html

(cl:defclass <WheelSpeedsStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (steering
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

(cl:defclass WheelSpeedsStamped (<WheelSpeedsStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelSpeedsStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelSpeedsStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name eufs_msgs-msg:<WheelSpeedsStamped> is deprecated: use eufs_msgs-msg:WheelSpeedsStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WheelSpeedsStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:header-val is deprecated.  Use eufs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'steering-val :lambda-list '(m))
(cl:defmethod steering-val ((m <WheelSpeedsStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:steering-val is deprecated.  Use eufs_msgs-msg:steering instead.")
  (steering m))

(cl:ensure-generic-function 'lf_speed-val :lambda-list '(m))
(cl:defmethod lf_speed-val ((m <WheelSpeedsStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:lf_speed-val is deprecated.  Use eufs_msgs-msg:lf_speed instead.")
  (lf_speed m))

(cl:ensure-generic-function 'rf_speed-val :lambda-list '(m))
(cl:defmethod rf_speed-val ((m <WheelSpeedsStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:rf_speed-val is deprecated.  Use eufs_msgs-msg:rf_speed instead.")
  (rf_speed m))

(cl:ensure-generic-function 'lb_speed-val :lambda-list '(m))
(cl:defmethod lb_speed-val ((m <WheelSpeedsStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:lb_speed-val is deprecated.  Use eufs_msgs-msg:lb_speed instead.")
  (lb_speed m))

(cl:ensure-generic-function 'rb_speed-val :lambda-list '(m))
(cl:defmethod rb_speed-val ((m <WheelSpeedsStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:rb_speed-val is deprecated.  Use eufs_msgs-msg:rb_speed instead.")
  (rb_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelSpeedsStamped>) ostream)
  "Serializes a message object of type '<WheelSpeedsStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelSpeedsStamped>) istream)
  "Deserializes a message object of type '<WheelSpeedsStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelSpeedsStamped>)))
  "Returns string type for a message object of type '<WheelSpeedsStamped>"
  "eufs_msgs/WheelSpeedsStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelSpeedsStamped)))
  "Returns string type for a message object of type 'WheelSpeedsStamped"
  "eufs_msgs/WheelSpeedsStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelSpeedsStamped>)))
  "Returns md5sum for a message object of type '<WheelSpeedsStamped>"
  "478e5adefb6b1f69dba1fd1279c68795")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelSpeedsStamped)))
  "Returns md5sum for a message object of type 'WheelSpeedsStamped"
  "478e5adefb6b1f69dba1fd1279c68795")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelSpeedsStamped>)))
  "Returns full string definition for message of type '<WheelSpeedsStamped>"
  (cl:format cl:nil "Header header~%~%float32 steering~%float32 lf_speed~%float32 rf_speed~%float32 lb_speed~%float32 rb_speed~%~%# Steering is in radians~%# Speeds are in RPM~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelSpeedsStamped)))
  "Returns full string definition for message of type 'WheelSpeedsStamped"
  (cl:format cl:nil "Header header~%~%float32 steering~%float32 lf_speed~%float32 rf_speed~%float32 lb_speed~%float32 rb_speed~%~%# Steering is in radians~%# Speeds are in RPM~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelSpeedsStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelSpeedsStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelSpeedsStamped
    (cl:cons ':header (header msg))
    (cl:cons ':steering (steering msg))
    (cl:cons ':lf_speed (lf_speed msg))
    (cl:cons ':rf_speed (rf_speed msg))
    (cl:cons ':lb_speed (lb_speed msg))
    (cl:cons ':rb_speed (rb_speed msg))
))
