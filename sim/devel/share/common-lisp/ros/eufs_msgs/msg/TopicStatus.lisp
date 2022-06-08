; Auto-generated. Do not edit!


(cl:in-package eufs_msgs-msg)


;//! \htmlinclude TopicStatus.msg.html

(cl:defclass <TopicStatus> (roslisp-msg-protocol:ros-message)
  ((topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform "")
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform "")
   (group
    :reader group
    :initarg :group
    :type cl:string
    :initform "")
   (trigger_ebs
    :reader trigger_ebs
    :initarg :trigger_ebs
    :type cl:boolean
    :initform cl:nil)
   (log_level
    :reader log_level
    :initarg :log_level
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TopicStatus (<TopicStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TopicStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TopicStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name eufs_msgs-msg:<TopicStatus> is deprecated: use eufs_msgs-msg:TopicStatus instead.")))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <TopicStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:topic-val is deprecated.  Use eufs_msgs-msg:topic instead.")
  (topic m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <TopicStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:description-val is deprecated.  Use eufs_msgs-msg:description instead.")
  (description m))

(cl:ensure-generic-function 'group-val :lambda-list '(m))
(cl:defmethod group-val ((m <TopicStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:group-val is deprecated.  Use eufs_msgs-msg:group instead.")
  (group m))

(cl:ensure-generic-function 'trigger_ebs-val :lambda-list '(m))
(cl:defmethod trigger_ebs-val ((m <TopicStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:trigger_ebs-val is deprecated.  Use eufs_msgs-msg:trigger_ebs instead.")
  (trigger_ebs m))

(cl:ensure-generic-function 'log_level-val :lambda-list '(m))
(cl:defmethod log_level-val ((m <TopicStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:log_level-val is deprecated.  Use eufs_msgs-msg:log_level instead.")
  (log_level m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <TopicStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:status-val is deprecated.  Use eufs_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TopicStatus>)))
    "Constants for message type '<TopicStatus>"
  '((:OFF . 0)
    (:PUBLISHING . 1)
    (:TIMEOUT_EXCEEDED . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TopicStatus)))
    "Constants for message type 'TopicStatus"
  '((:OFF . 0)
    (:PUBLISHING . 1)
    (:TIMEOUT_EXCEEDED . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TopicStatus>) ostream)
  "Serializes a message object of type '<TopicStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'group))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'group))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'trigger_ebs) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'log_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'log_level))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TopicStatus>) istream)
  "Deserializes a message object of type '<TopicStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'group) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'group) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'trigger_ebs) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'log_level) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'log_level) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TopicStatus>)))
  "Returns string type for a message object of type '<TopicStatus>"
  "eufs_msgs/TopicStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TopicStatus)))
  "Returns string type for a message object of type 'TopicStatus"
  "eufs_msgs/TopicStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TopicStatus>)))
  "Returns md5sum for a message object of type '<TopicStatus>"
  "be690e3e74c29c8629a7a49290c3e118")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TopicStatus)))
  "Returns md5sum for a message object of type 'TopicStatus"
  "be690e3e74c29c8629a7a49290c3e118")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TopicStatus>)))
  "Returns full string definition for message of type '<TopicStatus>"
  (cl:format cl:nil "# Topic information~%string topic~%string description~%string group~%bool trigger_ebs~%string log_level~%~%# Topic status~%uint16 status~%~%uint16 OFF = 0~%uint16 PUBLISHING = 1~%uint16 TIMEOUT_EXCEEDED = 2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TopicStatus)))
  "Returns full string definition for message of type 'TopicStatus"
  (cl:format cl:nil "# Topic information~%string topic~%string description~%string group~%bool trigger_ebs~%string log_level~%~%# Topic status~%uint16 status~%~%uint16 OFF = 0~%uint16 PUBLISHING = 1~%uint16 TIMEOUT_EXCEEDED = 2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TopicStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic))
     4 (cl:length (cl:slot-value msg 'description))
     4 (cl:length (cl:slot-value msg 'group))
     1
     4 (cl:length (cl:slot-value msg 'log_level))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TopicStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'TopicStatus
    (cl:cons ':topic (topic msg))
    (cl:cons ':description (description msg))
    (cl:cons ':group (group msg))
    (cl:cons ':trigger_ebs (trigger_ebs msg))
    (cl:cons ':log_level (log_level msg))
    (cl:cons ':status (status msg))
))
