;; Auto-generated. Do not edit!


(when (boundp 'eufs_msgs::TopicStatus)
  (if (not (find-package "EUFS_MSGS"))
    (make-package "EUFS_MSGS"))
  (shadow 'TopicStatus (find-package "EUFS_MSGS")))
(unless (find-package "EUFS_MSGS::TOPICSTATUS")
  (make-package "EUFS_MSGS::TOPICSTATUS"))

(in-package "ROS")
;;//! \htmlinclude TopicStatus.msg.html


(intern "*OFF*" (find-package "EUFS_MSGS::TOPICSTATUS"))
(shadow '*OFF* (find-package "EUFS_MSGS::TOPICSTATUS"))
(defconstant eufs_msgs::TopicStatus::*OFF* 0)
(intern "*PUBLISHING*" (find-package "EUFS_MSGS::TOPICSTATUS"))
(shadow '*PUBLISHING* (find-package "EUFS_MSGS::TOPICSTATUS"))
(defconstant eufs_msgs::TopicStatus::*PUBLISHING* 1)
(intern "*TIMEOUT_EXCEEDED*" (find-package "EUFS_MSGS::TOPICSTATUS"))
(shadow '*TIMEOUT_EXCEEDED* (find-package "EUFS_MSGS::TOPICSTATUS"))
(defconstant eufs_msgs::TopicStatus::*TIMEOUT_EXCEEDED* 2)
(defclass eufs_msgs::TopicStatus
  :super ros::object
  :slots (_topic _description _group _trigger_ebs _log_level _status ))

(defmethod eufs_msgs::TopicStatus
  (:init
   (&key
    ((:topic __topic) "")
    ((:description __description) "")
    ((:group __group) "")
    ((:trigger_ebs __trigger_ebs) nil)
    ((:log_level __log_level) "")
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _topic (string __topic))
   (setq _description (string __description))
   (setq _group (string __group))
   (setq _trigger_ebs __trigger_ebs)
   (setq _log_level (string __log_level))
   (setq _status (round __status))
   self)
  (:topic
   (&optional __topic)
   (if __topic (setq _topic __topic)) _topic)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:group
   (&optional __group)
   (if __group (setq _group __group)) _group)
  (:trigger_ebs
   (&optional __trigger_ebs)
   (if __trigger_ebs (setq _trigger_ebs __trigger_ebs)) _trigger_ebs)
  (:log_level
   (&optional __log_level)
   (if __log_level (setq _log_level __log_level)) _log_level)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; string _topic
    4 (length _topic)
    ;; string _description
    4 (length _description)
    ;; string _group
    4 (length _group)
    ;; bool _trigger_ebs
    1
    ;; string _log_level
    4 (length _log_level)
    ;; uint16 _status
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _topic
       (write-long (length _topic) s) (princ _topic s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; string _group
       (write-long (length _group) s) (princ _group s)
     ;; bool _trigger_ebs
       (if _trigger_ebs (write-byte -1 s) (write-byte 0 s))
     ;; string _log_level
       (write-long (length _log_level) s) (princ _log_level s)
     ;; uint16 _status
       (write-word _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _group
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _trigger_ebs
     (setq _trigger_ebs (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _log_level
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _log_level (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _status
     (setq _status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get eufs_msgs::TopicStatus :md5sum-) "be690e3e74c29c8629a7a49290c3e118")
(setf (get eufs_msgs::TopicStatus :datatype-) "eufs_msgs/TopicStatus")
(setf (get eufs_msgs::TopicStatus :definition-)
      "# Topic information
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



(provide :eufs_msgs/TopicStatus "be690e3e74c29c8629a7a49290c3e118")


