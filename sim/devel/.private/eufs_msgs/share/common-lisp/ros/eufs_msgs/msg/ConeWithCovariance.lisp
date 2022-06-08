; Auto-generated. Do not edit!


(cl:in-package eufs_msgs-msg)


;//! \htmlinclude ConeWithCovariance.msg.html

(cl:defclass <ConeWithCovariance> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (covariance
    :reader covariance
    :initarg :covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ConeWithCovariance (<ConeWithCovariance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConeWithCovariance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConeWithCovariance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name eufs_msgs-msg:<ConeWithCovariance> is deprecated: use eufs_msgs-msg:ConeWithCovariance instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <ConeWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:point-val is deprecated.  Use eufs_msgs-msg:point instead.")
  (point m))

(cl:ensure-generic-function 'covariance-val :lambda-list '(m))
(cl:defmethod covariance-val ((m <ConeWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eufs_msgs-msg:covariance-val is deprecated.  Use eufs_msgs-msg:covariance instead.")
  (covariance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConeWithCovariance>) ostream)
  "Serializes a message object of type '<ConeWithCovariance>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'covariance))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConeWithCovariance>) istream)
  "Deserializes a message object of type '<ConeWithCovariance>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  (cl:setf (cl:slot-value msg 'covariance) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'covariance)))
    (cl:dotimes (i 4)
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConeWithCovariance>)))
  "Returns string type for a message object of type '<ConeWithCovariance>"
  "eufs_msgs/ConeWithCovariance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConeWithCovariance)))
  "Returns string type for a message object of type 'ConeWithCovariance"
  "eufs_msgs/ConeWithCovariance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConeWithCovariance>)))
  "Returns md5sum for a message object of type '<ConeWithCovariance>"
  "bec8795f508b6f8adfedec6fd5758082")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConeWithCovariance)))
  "Returns md5sum for a message object of type 'ConeWithCovariance"
  "bec8795f508b6f8adfedec6fd5758082")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConeWithCovariance>)))
  "Returns full string definition for message of type '<ConeWithCovariance>"
  (cl:format cl:nil "# Cone information~%~%geometry_msgs/Point point~%float64[4] covariance~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConeWithCovariance)))
  "Returns full string definition for message of type 'ConeWithCovariance"
  (cl:format cl:nil "# Cone information~%~%geometry_msgs/Point point~%float64[4] covariance~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConeWithCovariance>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConeWithCovariance>))
  "Converts a ROS message object to a list"
  (cl:list 'ConeWithCovariance
    (cl:cons ':point (point msg))
    (cl:cons ':covariance (covariance msg))
))
