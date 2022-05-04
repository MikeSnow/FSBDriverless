; Auto-generated. Do not edit!


(cl:in-package eufs_msgs-msg)


;//! \htmlinclude PathIntegralTiming.msg.html

(cl:defclass <PathIntegralTiming> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (average_time_between_poses
    :reader average_time_between_poses
    :initarg :average_time_between_poses
    :type cl:float
    :initform 0.0)
   (average_optimization_cycle_time
    :reader average_optimization_cycle_time
    :initarg :average_optimization_cycle_time
    :type cl:float
    :initform 0.0)
   (average_sleep_time
    :reader average_sleep_time
    :initarg :average_sleep_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass PathIntegralTiming (<PathIntegralTiming>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathIntegralTiming>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathIntegralTiming)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name eufs_msgs-msg:<PathIntegralTiming> is deprecated: use eufs_msgs-msg:PathIntegralTiming instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PathIntegralTiming>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:header-val is deprecated.  Use eufs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'average_time_between_poses-val :lambda-list '(m))
(cl:defmethod average_time_between_poses-val ((m <PathIntegralTiming>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:average_time_between_poses-val is deprecated.  Use eufs_msgs-msg:average_time_between_poses instead.")
  (average_time_between_poses m))

(cl:ensure-generic-function 'average_optimization_cycle_time-val :lambda-list '(m))
(cl:defmethod average_optimization_cycle_time-val ((m <PathIntegralTiming>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:average_optimization_cycle_time-val is deprecated.  Use eufs_msgs-msg:average_optimization_cycle_time instead.")
  (average_optimization_cycle_time m))

(cl:ensure-generic-function 'average_sleep_time-val :lambda-list '(m))
(cl:defmethod average_sleep_time-val ((m <PathIntegralTiming>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:average_sleep_time-val is deprecated.  Use eufs_msgs-msg:average_sleep_time instead.")
  (average_sleep_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathIntegralTiming>) ostream)
  "Serializes a message object of type '<PathIntegralTiming>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'average_time_between_poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'average_optimization_cycle_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'average_sleep_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathIntegralTiming>) istream)
  "Deserializes a message object of type '<PathIntegralTiming>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'average_time_between_poses) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'average_optimization_cycle_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'average_sleep_time) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathIntegralTiming>)))
  "Returns string type for a message object of type '<PathIntegralTiming>"
  "eufs_msgs/PathIntegralTiming")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathIntegralTiming)))
  "Returns string type for a message object of type 'PathIntegralTiming"
  "eufs_msgs/PathIntegralTiming")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathIntegralTiming>)))
  "Returns md5sum for a message object of type '<PathIntegralTiming>"
  "da8d85f1b7925638bce827c1d42eeb1b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathIntegralTiming)))
  "Returns md5sum for a message object of type 'PathIntegralTiming"
  "da8d85f1b7925638bce827c1d42eeb1b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathIntegralTiming>)))
  "Returns full string definition for message of type '<PathIntegralTiming>"
  (cl:format cl:nil "Header header~%~%float64 average_time_between_poses~%float64 average_optimization_cycle_time~%float64 average_sleep_time~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathIntegralTiming)))
  "Returns full string definition for message of type 'PathIntegralTiming"
  (cl:format cl:nil "Header header~%~%float64 average_time_between_poses~%float64 average_optimization_cycle_time~%float64 average_sleep_time~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathIntegralTiming>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathIntegralTiming>))
  "Converts a ROS message object to a list"
  (cl:list 'PathIntegralTiming
    (cl:cons ':header (header msg))
    (cl:cons ':average_time_between_poses (average_time_between_poses msg))
    (cl:cons ':average_optimization_cycle_time (average_optimization_cycle_time msg))
    (cl:cons ':average_sleep_time (average_sleep_time msg))
))
