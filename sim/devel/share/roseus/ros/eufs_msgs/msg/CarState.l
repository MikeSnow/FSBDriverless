;; Auto-generated. Do not edit!


(when (boundp 'eufs_msgs::CarState)
  (if (not (find-package "EUFS_MSGS"))
    (make-package "EUFS_MSGS"))
  (shadow 'CarState (find-package "EUFS_MSGS")))
(unless (find-package "EUFS_MSGS::CARSTATE")
  (make-package "EUFS_MSGS::CARSTATE"))

(in-package "ROS")
;;//! \htmlinclude CarState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass eufs_msgs::CarState
  :super ros::object
  :slots (_header _child_frame_id _pose _twist _linear_acceleration _linear_acceleration_covariance _slip_angle _state_of_charge ))

(defmethod eufs_msgs::CarState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:child_frame_id __child_frame_id) "")
    ((:pose __pose) (instance geometry_msgs::PoseWithCovariance :init))
    ((:twist __twist) (instance geometry_msgs::TwistWithCovariance :init))
    ((:linear_acceleration __linear_acceleration) (instance geometry_msgs::Vector3 :init))
    ((:linear_acceleration_covariance __linear_acceleration_covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:slip_angle __slip_angle) 0.0)
    ((:state_of_charge __state_of_charge) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _child_frame_id (string __child_frame_id))
   (setq _pose __pose)
   (setq _twist __twist)
   (setq _linear_acceleration __linear_acceleration)
   (setq _linear_acceleration_covariance __linear_acceleration_covariance)
   (setq _slip_angle (float __slip_angle))
   (setq _state_of_charge (float __state_of_charge))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:child_frame_id
   (&optional __child_frame_id)
   (if __child_frame_id (setq _child_frame_id __child_frame_id)) _child_frame_id)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:linear_acceleration
   (&rest __linear_acceleration)
   (if (keywordp (car __linear_acceleration))
       (send* _linear_acceleration __linear_acceleration)
     (progn
       (if __linear_acceleration (setq _linear_acceleration (car __linear_acceleration)))
       _linear_acceleration)))
  (:linear_acceleration_covariance
   (&optional __linear_acceleration_covariance)
   (if __linear_acceleration_covariance (setq _linear_acceleration_covariance __linear_acceleration_covariance)) _linear_acceleration_covariance)
  (:slip_angle
   (&optional __slip_angle)
   (if __slip_angle (setq _slip_angle __slip_angle)) _slip_angle)
  (:state_of_charge
   (&optional __state_of_charge)
   (if __state_of_charge (setq _state_of_charge __state_of_charge)) _state_of_charge)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _child_frame_id
    4 (length _child_frame_id)
    ;; geometry_msgs/PoseWithCovariance _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/TwistWithCovariance _twist
    (send _twist :serialization-length)
    ;; geometry_msgs/Vector3 _linear_acceleration
    (send _linear_acceleration :serialization-length)
    ;; float64[9] _linear_acceleration_covariance
    (* 8    9)
    ;; float64 _slip_angle
    8
    ;; float64 _state_of_charge
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _child_frame_id
       (write-long (length _child_frame_id) s) (princ _child_frame_id s)
     ;; geometry_msgs/PoseWithCovariance _pose
       (send _pose :serialize s)
     ;; geometry_msgs/TwistWithCovariance _twist
       (send _twist :serialize s)
     ;; geometry_msgs/Vector3 _linear_acceleration
       (send _linear_acceleration :serialize s)
     ;; float64[9] _linear_acceleration_covariance
     (dotimes (i 9)
       (sys::poke (elt _linear_acceleration_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _slip_angle
       (sys::poke _slip_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _state_of_charge
       (sys::poke _state_of_charge (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _child_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _child_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseWithCovariance _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/TwistWithCovariance _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;; geometry_msgs/Vector3 _linear_acceleration
     (send _linear_acceleration :deserialize buf ptr-) (incf ptr- (send _linear_acceleration :serialization-length))
   ;; float64[9] _linear_acceleration_covariance
   (dotimes (i (length _linear_acceleration_covariance))
     (setf (elt _linear_acceleration_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64 _slip_angle
     (setq _slip_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _state_of_charge
     (setq _state_of_charge (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get eufs_msgs::CarState :md5sum-) "c0a0329e69455f31d0a4a61e5a702081")
(setf (get eufs_msgs::CarState :datatype-) "eufs_msgs/CarState")
(setf (get eufs_msgs::CarState :definition-)
      "# This message includes both the kinematic and the dynamic state of the vehicle
# All values are in SI units 
Header header
string child_frame_id # aka frame of the car

# Kinematic State (x_k) in header frame 
geometry_msgs/PoseWithCovariance pose 

# Dynamic State (x_d) in child_frame_id
geometry_msgs/TwistWithCovariance twist   # m/s
geometry_msgs/Vector3 linear_acceleration # m/s^2
float64[9] linear_acceleration_covariance # Row major x, y z in (m/s^2)
float64 slip_angle

# Metadata
float64 state_of_charge # in Volts (V)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :eufs_msgs/CarState "c0a0329e69455f31d0a4a61e5a702081")


