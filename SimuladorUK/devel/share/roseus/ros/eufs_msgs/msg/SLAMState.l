;; Auto-generated. Do not edit!


(when (boundp 'eufs_msgs::SLAMState)
  (if (not (find-package "EUFS_MSGS"))
    (make-package "EUFS_MSGS"))
  (shadow 'SLAMState (find-package "EUFS_MSGS")))
(unless (find-package "EUFS_MSGS::SLAMSTATE")
  (make-package "EUFS_MSGS::SLAMSTATE"))

(in-package "ROS")
;;//! \htmlinclude SLAMState.msg.html


(intern "*NO_INPUTS*" (find-package "EUFS_MSGS::SLAMSTATE"))
(shadow '*NO_INPUTS* (find-package "EUFS_MSGS::SLAMSTATE"))
(defconstant eufs_msgs::SLAMState::*NO_INPUTS* 0)
(intern "*MAPPING*" (find-package "EUFS_MSGS::SLAMSTATE"))
(shadow '*MAPPING* (find-package "EUFS_MSGS::SLAMSTATE"))
(defconstant eufs_msgs::SLAMState::*MAPPING* 1)
(intern "*LOCALISING*" (find-package "EUFS_MSGS::SLAMSTATE"))
(shadow '*LOCALISING* (find-package "EUFS_MSGS::SLAMSTATE"))
(defconstant eufs_msgs::SLAMState::*LOCALISING* 2)
(intern "*TIMEOUT*" (find-package "EUFS_MSGS::SLAMSTATE"))
(shadow '*TIMEOUT* (find-package "EUFS_MSGS::SLAMSTATE"))
(defconstant eufs_msgs::SLAMState::*TIMEOUT* 3)
(intern "*RECOMMENDS_FAILURE*" (find-package "EUFS_MSGS::SLAMSTATE"))
(shadow '*RECOMMENDS_FAILURE* (find-package "EUFS_MSGS::SLAMSTATE"))
(defconstant eufs_msgs::SLAMState::*RECOMMENDS_FAILURE* 4)
(defclass eufs_msgs::SLAMState
  :super ros::object
  :slots (_loop_closed _laps _status _state ))

(defmethod eufs_msgs::SLAMState
  (:init
   (&key
    ((:loop_closed __loop_closed) nil)
    ((:laps __laps) 0)
    ((:status __status) "")
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _loop_closed __loop_closed)
   (setq _laps (round __laps))
   (setq _status (string __status))
   (setq _state (round __state))
   self)
  (:loop_closed
   (&optional __loop_closed)
   (if __loop_closed (setq _loop_closed __loop_closed)) _loop_closed)
  (:laps
   (&optional __laps)
   (if __laps (setq _laps __laps)) _laps)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; bool _loop_closed
    1
    ;; int16 _laps
    2
    ;; string _status
    4 (length _status)
    ;; int8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _loop_closed
       (if _loop_closed (write-byte -1 s) (write-byte 0 s))
     ;; int16 _laps
       (write-word _laps s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; int8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _loop_closed
     (setq _loop_closed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _laps
     (setq _laps (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _state 127) (setq _state (- _state 256)))
   ;;
   self)
  )

(setf (get eufs_msgs::SLAMState :md5sum-) "ab64b055dcd9ea5dad8d577fe02146d7")
(setf (get eufs_msgs::SLAMState :datatype-) "eufs_msgs/SLAMState")
(setf (get eufs_msgs::SLAMState :definition-)
      "bool loop_closed          # True after loop closure
int16 laps
string status             # Dump for any logging purposes. Eg: \"particle covariance high; can't localise\"

# Possible states of the algorithm
int8 NO_INPUTS=0          # No inputs have been received yet
int8 MAPPING=1            # Building map
int8 LOCALISING=2         # Loop closed, now localising only
int8 TIMEOUT=3            # Input topics timedout
int8 RECOMMENDS_FAILURE=4 # If true, critical failure!  Recommends emergency shutdown

int8 state                # States enumerated above

")



(provide :eufs_msgs/SLAMState "ab64b055dcd9ea5dad8d577fe02146d7")


