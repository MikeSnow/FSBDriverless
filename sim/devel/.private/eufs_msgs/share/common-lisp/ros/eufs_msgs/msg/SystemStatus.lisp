; Auto-generated. Do not edit!


(cl:in-package eufs_msgs-msg)


;//! \htmlinclude SystemStatus.msg.html

(cl:defclass <SystemStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (topic_statuses
    :reader topic_statuses
    :initarg :topic_statuses
    :type (cl:vector eufs_msgs-msg:TopicStatus)
   :initform (cl:make-array 0 :element-type 'eufs_msgs-msg:TopicStatus :initial-element (cl:make-instance 'eufs_msgs-msg:TopicStatus))))
)

(cl:defclass SystemStatus (<SystemStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SystemStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SystemStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name eufs_msgs-msg:<SystemStatus> is deprecated: use eufs_msgs-msg:SystemStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SystemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:header-val is deprecated.  Use eufs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'topic_statuses-val :lambda-list '(m))
(cl:defmethod topic_statuses-val ((m <SystemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:topic_statuses-val is deprecated.  Use eufs_msgs-msg:topic_statuses instead.")
  (topic_statuses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SystemStatus>) ostream)
  "Serializes a message object of type '<SystemStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'topic_statuses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'topic_statuses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SystemStatus>) istream)
  "Deserializes a message object of type '<SystemStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'topic_statuses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'topic_statuses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'eufs_msgs-msg:TopicStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SystemStatus>)))
  "Returns string type for a message object of type '<SystemStatus>"
  "eufs_msgs/SystemStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SystemStatus)))
  "Returns string type for a message object of type 'SystemStatus"
  "eufs_msgs/SystemStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SystemStatus>)))
  "Returns md5sum for a message object of type '<SystemStatus>"
  "5a06902117b2ce130952f57a9e31ee19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SystemStatus)))
  "Returns md5sum for a message object of type 'SystemStatus"
  "5a06902117b2ce130952f57a9e31ee19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SystemStatus>)))
  "Returns full string definition for message of type '<SystemStatus>"
  (cl:format cl:nil "Header header~%~%TopicStatus[] topic_statuses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: eufs_msgs/TopicStatus~%# Topic information~%string topic~%string description~%string group~%bool trigger_ebs~%string log_level~%~%# Topic status~%uint16 status~%~%uint16 OFF = 0~%uint16 PUBLISHING = 1~%uint16 TIMEOUT_EXCEEDED = 2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SystemStatus)))
  "Returns full string definition for message of type 'SystemStatus"
  (cl:format cl:nil "Header header~%~%TopicStatus[] topic_statuses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: eufs_msgs/TopicStatus~%# Topic information~%string topic~%string description~%string group~%bool trigger_ebs~%string log_level~%~%# Topic status~%uint16 status~%~%uint16 OFF = 0~%uint16 PUBLISHING = 1~%uint16 TIMEOUT_EXCEEDED = 2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SystemStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'topic_statuses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SystemStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SystemStatus
    (cl:cons ':header (header msg))
    (cl:cons ':topic_statuses (topic_statuses msg))
))
