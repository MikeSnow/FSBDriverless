; Auto-generated. Do not edit!


(cl:in-package eufs_msgs-msg)


;//! \htmlinclude CanState.msg.html

(cl:defclass <CanState> (roslisp-msg-protocol:ros-message)
  ((as_state
    :reader as_state
    :initarg :as_state
    :type cl:fixnum
    :initform 0)
   (ami_state
    :reader ami_state
    :initarg :ami_state
    :type cl:fixnum
    :initform 0)
   (mission_flag
    :reader mission_flag
    :initarg :mission_flag
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CanState (<CanState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CanState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CanState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name eufs_msgs-msg:<CanState> is deprecated: use eufs_msgs-msg:CanState instead.")))

(cl:ensure-generic-function 'as_state-val :lambda-list '(m))
(cl:defmethod as_state-val ((m <CanState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:as_state-val is deprecated.  Use eufs_msgs-msg:as_state instead.")
  (as_state m))

(cl:ensure-generic-function 'ami_state-val :lambda-list '(m))
(cl:defmethod ami_state-val ((m <CanState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:ami_state-val is deprecated.  Use eufs_msgs-msg:ami_state instead.")
  (ami_state m))

(cl:ensure-generic-function 'mission_flag-val :lambda-list '(m))
(cl:defmethod mission_flag-val ((m <CanState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:mission_flag-val is deprecated.  Use eufs_msgs-msg:mission_flag instead.")
  (mission_flag m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CanState>)))
    "Constants for message type '<CanState>"
  '((:AS_OFF . 0)
    (:AS_READY . 1)
    (:AS_DRIVING . 2)
    (:AS_EMERGENCY_BRAKE . 3)
    (:AS_FINISHED . 4)
    (:AMI_NOT_SELECTED . 10)
    (:AMI_ACCELERATION . 11)
    (:AMI_SKIDPAD . 12)
    (:AMI_AUTOCROSS . 13)
    (:AMI_TRACK_DRIVE . 14)
    (:AMI_AUTONOMOUS_DEMO . 15)
    (:AMI_ADS_INSPECTION . 16)
    (:AMI_ADS_EBS . 17)
    (:AMI_DDT_INSPECTION_A . 18)
    (:AMI_DDT_INSPECTION_B . 19)
    (:AMI_MANUAL . 20))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CanState)))
    "Constants for message type 'CanState"
  '((:AS_OFF . 0)
    (:AS_READY . 1)
    (:AS_DRIVING . 2)
    (:AS_EMERGENCY_BRAKE . 3)
    (:AS_FINISHED . 4)
    (:AMI_NOT_SELECTED . 10)
    (:AMI_ACCELERATION . 11)
    (:AMI_SKIDPAD . 12)
    (:AMI_AUTOCROSS . 13)
    (:AMI_TRACK_DRIVE . 14)
    (:AMI_AUTONOMOUS_DEMO . 15)
    (:AMI_ADS_INSPECTION . 16)
    (:AMI_ADS_EBS . 17)
    (:AMI_DDT_INSPECTION_A . 18)
    (:AMI_DDT_INSPECTION_B . 19)
    (:AMI_MANUAL . 20))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CanState>) ostream)
  "Serializes a message object of type '<CanState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'as_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'as_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ami_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ami_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mission_flag) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CanState>) istream)
  "Deserializes a message object of type '<CanState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'as_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'as_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ami_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ami_state)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mission_flag) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CanState>)))
  "Returns string type for a message object of type '<CanState>"
  "eufs_msgs/CanState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CanState)))
  "Returns string type for a message object of type 'CanState"
  "eufs_msgs/CanState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CanState>)))
  "Returns md5sum for a message object of type '<CanState>"
  "6932da39aa5099a52c1cabee21cb9e9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CanState)))
  "Returns md5sum for a message object of type 'CanState"
  "6932da39aa5099a52c1cabee21cb9e9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CanState>)))
  "Returns full string definition for message of type '<CanState>"
  (cl:format cl:nil "# State of the Autonomous System~%uint16 as_state~%~%uint16 AS_OFF = 0~%uint16 AS_READY = 1~%uint16 AS_DRIVING = 2~%uint16 AS_EMERGENCY_BRAKE = 3~%uint16 AS_FINISHED = 4~%~%# Mission indicator~%uint16 ami_state~%~%uint16 AMI_NOT_SELECTED = 10~%uint16 AMI_ACCELERATION = 11~%uint16 AMI_SKIDPAD = 12~%uint16 AMI_AUTOCROSS = 13~%uint16 AMI_TRACK_DRIVE = 14~%uint16 AMI_AUTONOMOUS_DEMO = 15~%uint16 AMI_ADS_INSPECTION = 16~%uint16 AMI_ADS_EBS = 17~%uint16 AMI_DDT_INSPECTION_A = 18~%uint16 AMI_DDT_INSPECTION_B = 19~%uint16 AMI_MANUAL = 20~%~%# asserted true when mission can be started~%bool mission_flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CanState)))
  "Returns full string definition for message of type 'CanState"
  (cl:format cl:nil "# State of the Autonomous System~%uint16 as_state~%~%uint16 AS_OFF = 0~%uint16 AS_READY = 1~%uint16 AS_DRIVING = 2~%uint16 AS_EMERGENCY_BRAKE = 3~%uint16 AS_FINISHED = 4~%~%# Mission indicator~%uint16 ami_state~%~%uint16 AMI_NOT_SELECTED = 10~%uint16 AMI_ACCELERATION = 11~%uint16 AMI_SKIDPAD = 12~%uint16 AMI_AUTOCROSS = 13~%uint16 AMI_TRACK_DRIVE = 14~%uint16 AMI_AUTONOMOUS_DEMO = 15~%uint16 AMI_ADS_INSPECTION = 16~%uint16 AMI_ADS_EBS = 17~%uint16 AMI_DDT_INSPECTION_A = 18~%uint16 AMI_DDT_INSPECTION_B = 19~%uint16 AMI_MANUAL = 20~%~%# asserted true when mission can be started~%bool mission_flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CanState>))
  (cl:+ 0
     2
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CanState>))
  "Converts a ROS message object to a list"
  (cl:list 'CanState
    (cl:cons ':as_state (as_state msg))
    (cl:cons ':ami_state (ami_state msg))
    (cl:cons ':mission_flag (mission_flag msg))
))
