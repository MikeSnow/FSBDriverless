;; Auto-generated. Do not edit!


(when (boundp 'eufs_msgs::SystemStatus)
  (if (not (find-package "EUFS_MSGS"))
    (make-package "EUFS_MSGS"))
  (shadow 'SystemStatus (find-package "EUFS_MSGS")))
(unless (find-package "EUFS_MSGS::SYSTEMSTATUS")
  (make-package "EUFS_MSGS::SYSTEMSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SystemStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass eufs_msgs::SystemStatus
  :super ros::object
  :slots (_header _topic_statuses ))

(defmethod eufs_msgs::SystemStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:topic_statuses __topic_statuses) (let (r) (dotimes (i 0) (push (instance eufs_msgs::TopicStatus :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _topic_statuses __topic_statuses)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:topic_statuses
   (&rest __topic_statuses)
   (if (keywordp (car __topic_statuses))
       (send* _topic_statuses __topic_statuses)
     (progn
       (if __topic_statuses (setq _topic_statuses (car __topic_statuses)))
       _topic_statuses)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; eufs_msgs/TopicStatus[] _topic_statuses
    (apply #'+ (send-all _topic_statuses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; eufs_msgs/TopicStatus[] _topic_statuses
     (write-long (length _topic_statuses) s)
     (dolist (elem _topic_statuses)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; eufs_msgs/TopicStatus[] _topic_statuses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _topic_statuses (let (r) (dotimes (i n) (push (instance eufs_msgs::TopicStatus :init) r)) r))
     (dolist (elem- _topic_statuses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get eufs_msgs::SystemStatus :md5sum-) "5a06902117b2ce130952f57a9e31ee19")
(setf (get eufs_msgs::SystemStatus :datatype-) "eufs_msgs/SystemStatus")
(setf (get eufs_msgs::SystemStatus :definition-)
      "Header header

TopicStatus[] topic_statuses

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
MSG: eufs_msgs/TopicStatus
# Topic information
string topic
string description
string group
bool trigger_ebs
string log_level

# Topic status
uint16 status

uint16 OFF = 0
uint16 PUBLISHING = 1
uint16 TIMEOUT_EXCEEDED = 2

")



(provide :eufs_msgs/SystemStatus "5a06902117b2ce130952f57a9e31ee19")


