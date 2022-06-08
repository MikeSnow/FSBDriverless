;; Auto-generated. Do not edit!


(when (boundp 'eufs_msgs::Runstop)
  (if (not (find-package "EUFS_MSGS"))
    (make-package "EUFS_MSGS"))
  (shadow 'Runstop (find-package "EUFS_MSGS")))
(unless (find-package "EUFS_MSGS::RUNSTOP")
  (make-package "EUFS_MSGS::RUNSTOP"))

(in-package "ROS")
;;//! \htmlinclude Runstop.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass eufs_msgs::Runstop
  :super ros::object
  :slots (_header _sender _motion_enabled ))

(defmethod eufs_msgs::Runstop
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sender __sender) "")
    ((:motion_enabled __motion_enabled) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _sender (string __sender))
   (setq _motion_enabled __motion_enabled)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sender
   (&optional __sender)
   (if __sender (setq _sender __sender)) _sender)
  (:motion_enabled
   (&optional __motion_enabled)
   (if __motion_enabled (setq _motion_enabled __motion_enabled)) _motion_enabled)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _sender
    4 (length _sender)
    ;; bool _motion_enabled
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _sender
       (write-long (length _sender) s) (princ _sender s)
     ;; bool _motion_enabled
       (if _motion_enabled (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _sender
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sender (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _motion_enabled
     (setq _motion_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get eufs_msgs::Runstop :md5sum-) "9c991989332a017d4850170a29c106fb")
(setf (get eufs_msgs::Runstop :datatype-) "eufs_msgs/Runstop")
(setf (get eufs_msgs::Runstop :definition-)
      "Header header

string sender
bool motion_enabled

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

")



(provide :eufs_msgs/Runstop "9c991989332a017d4850170a29c106fb")


