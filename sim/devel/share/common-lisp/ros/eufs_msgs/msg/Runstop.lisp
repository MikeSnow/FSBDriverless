; Auto-generated. Do not edit!


(cl:in-package eufs_msgs-msg)


;//! \htmlinclude Runstop.msg.html

(cl:defclass <Runstop> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sender
    :reader sender
    :initarg :sender
    :type cl:string
    :initform "")
   (motion_enabled
    :reader motion_enabled
    :initarg :motion_enabled
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Runstop (<Runstop>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Runstop>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Runstop)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name eufs_msgs-msg:<Runstop> is deprecated: use eufs_msgs-msg:Runstop instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Runstop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:header-val is deprecated.  Use eufs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sender-val :lambda-list '(m))
(cl:defmethod sender-val ((m <Runstop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:sender-val is deprecated.  Use eufs_msgs-msg:sender instead.")
  (sender m))

(cl:ensure-generic-function 'motion_enabled-val :lambda-list '(m))
(cl:defmethod motion_enabled-val ((m <Runstop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:motion_enabled-val is deprecated.  Use eufs_msgs-msg:motion_enabled instead.")
  (motion_enabled m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Runstop>) ostream)
  "Serializes a message object of type '<Runstop>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sender))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sender))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motion_enabled) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Runstop>) istream)
  "Deserializes a message object of type '<Runstop>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sender) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sender) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'motion_enabled) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Runstop>)))
  "Returns string type for a message object of type '<Runstop>"
  "eufs_msgs/Runstop")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Runstop)))
  "Returns string type for a message object of type 'Runstop"
  "eufs_msgs/Runstop")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Runstop>)))
  "Returns md5sum for a message object of type '<Runstop>"
  "9c991989332a017d4850170a29c106fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Runstop)))
  "Returns md5sum for a message object of type 'Runstop"
  "9c991989332a017d4850170a29c106fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Runstop>)))
  "Returns full string definition for message of type '<Runstop>"
  (cl:format cl:nil "Header header~%~%string sender~%bool motion_enabled~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Runstop)))
  "Returns full string definition for message of type 'Runstop"
  (cl:format cl:nil "Header header~%~%string sender~%bool motion_enabled~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Runstop>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'sender))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Runstop>))
  "Converts a ROS message object to a list"
  (cl:list 'Runstop
    (cl:cons ':header (header msg))
    (cl:cons ':sender (sender msg))
    (cl:cons ':motion_enabled (motion_enabled msg))
))
