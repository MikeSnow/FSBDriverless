; Auto-generated. Do not edit!


(cl:in-package eufs_msgs-msg)


;//! \htmlinclude SLAMState.msg.html

(cl:defclass <SLAMState> (roslisp-msg-protocol:ros-message)
  ((loop_closed
    :reader loop_closed
    :initarg :loop_closed
    :type cl:boolean
    :initform cl:nil)
   (laps
    :reader laps
    :initarg :laps
    :type cl:fixnum
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SLAMState (<SLAMState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SLAMState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SLAMState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name eufs_msgs-msg:<SLAMState> is deprecated: use eufs_msgs-msg:SLAMState instead.")))

(cl:ensure-generic-function 'loop_closed-val :lambda-list '(m))
(cl:defmethod loop_closed-val ((m <SLAMState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:loop_closed-val is deprecated.  Use eufs_msgs-msg:loop_closed instead.")
  (loop_closed m))

(cl:ensure-generic-function 'laps-val :lambda-list '(m))
(cl:defmethod laps-val ((m <SLAMState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:laps-val is deprecated.  Use eufs_msgs-msg:laps instead.")
  (laps m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SLAMState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:status-val is deprecated.  Use eufs_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SLAMState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:state-val is deprecated.  Use eufs_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SLAMState>)))
    "Constants for message type '<SLAMState>"
  '((:NO_INPUTS . 0)
    (:MAPPING . 1)
    (:LOCALISING . 2)
    (:TIMEOUT . 3)
    (:RECOMMENDS_FAILURE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SLAMState)))
    "Constants for message type 'SLAMState"
  '((:NO_INPUTS . 0)
    (:MAPPING . 1)
    (:LOCALISING . 2)
    (:TIMEOUT . 3)
    (:RECOMMENDS_FAILURE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SLAMState>) ostream)
  "Serializes a message object of type '<SLAMState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'loop_closed) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'laps)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SLAMState>) istream)
  "Deserializes a message object of type '<SLAMState>"
    (cl:setf (cl:slot-value msg 'loop_closed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'laps) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SLAMState>)))
  "Returns string type for a message object of type '<SLAMState>"
  "eufs_msgs/SLAMState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SLAMState)))
  "Returns string type for a message object of type 'SLAMState"
  "eufs_msgs/SLAMState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SLAMState>)))
  "Returns md5sum for a message object of type '<SLAMState>"
  "ab64b055dcd9ea5dad8d577fe02146d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SLAMState)))
  "Returns md5sum for a message object of type 'SLAMState"
  "ab64b055dcd9ea5dad8d577fe02146d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SLAMState>)))
  "Returns full string definition for message of type '<SLAMState>"
  (cl:format cl:nil "bool loop_closed          # True after loop closure~%int16 laps~%string status             # Dump for any logging purposes. Eg: \"particle covariance high; can't localise\"~%~%# Possible states of the algorithm~%int8 NO_INPUTS=0          # No inputs have been received yet~%int8 MAPPING=1            # Building map~%int8 LOCALISING=2         # Loop closed, now localising only~%int8 TIMEOUT=3            # Input topics timedout~%int8 RECOMMENDS_FAILURE=4 # If true, critical failure!  Recommends emergency shutdown~%~%int8 state                # States enumerated above~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SLAMState)))
  "Returns full string definition for message of type 'SLAMState"
  (cl:format cl:nil "bool loop_closed          # True after loop closure~%int16 laps~%string status             # Dump for any logging purposes. Eg: \"particle covariance high; can't localise\"~%~%# Possible states of the algorithm~%int8 NO_INPUTS=0          # No inputs have been received yet~%int8 MAPPING=1            # Building map~%int8 LOCALISING=2         # Loop closed, now localising only~%int8 TIMEOUT=3            # Input topics timedout~%int8 RECOMMENDS_FAILURE=4 # If true, critical failure!  Recommends emergency shutdown~%~%int8 state                # States enumerated above~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SLAMState>))
  (cl:+ 0
     1
     2
     4 (cl:length (cl:slot-value msg 'status))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SLAMState>))
  "Converts a ROS message object to a list"
  (cl:list 'SLAMState
    (cl:cons ':loop_closed (loop_closed msg))
    (cl:cons ':laps (laps msg))
    (cl:cons ':status (status msg))
    (cl:cons ':state (state msg))
))
