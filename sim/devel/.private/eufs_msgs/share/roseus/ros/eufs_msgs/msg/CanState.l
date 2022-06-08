;; Auto-generated. Do not edit!


(when (boundp 'eufs_msgs::CanState)
  (if (not (find-package "EUFS_MSGS"))
    (make-package "EUFS_MSGS"))
  (shadow 'CanState (find-package "EUFS_MSGS")))
(unless (find-package "EUFS_MSGS::CANSTATE")
  (make-package "EUFS_MSGS::CANSTATE"))

(in-package "ROS")
;;//! \htmlinclude CanState.msg.html


(intern "*AS_OFF*" (find-package "EUFS_MSGS::CANSTATE"))
(shadow '*AS_OFF* (find-package "EUFS_MSGS::CANSTATE"))
(defconstant eufs_msgs::CanState::*AS_OFF* 0)
(intern "*AS_READY*" (find-package "EUFS_MSGS::CANSTATE"))
(shadow '*AS_READY* (find-package "EUFS_MSGS::CANSTATE"))
(defconstant eufs_msgs::CanState::*AS_READY* 1)
(intern "*AS_DRIVING*" (find-package "EUFS_MSGS::CANSTATE"))
(shadow '*AS_DRIVING* (find-package "EUFS_MSGS::CANSTATE"))
(defconstant eufs_msgs::CanState::*AS_DRIVING* 2)
(intern "*AS_EMERGENCY_BRAKE*" (find-package "EUFS_MSGS::CANSTATE"))
(shadow '*AS_EMERGENCY_BRAKE* (find-package "EUFS_MSGS::CANSTATE"))
(defconstant eufs_msgs::CanState::*AS_EMERGENCY_BRAKE* 3)
(intern "*AS_FINISHED*" (find-package "EUFS_MSGS::CANSTATE"))
(shadow '*AS_FINISHED* (find-package "EUFS_MSGS::CANSTATE"))
(defconstant eufs_msgs::CanState::*AS_FINISHED* 4)
(intern "*AMI_NOT_SELECTED*" (find-package "EUFS_MSGS::CANSTATE"))
(shadow '*AMI_NOT_SELECTED* (find-package "EUFS_MSGS::CANSTATE"))
(defconstant eufs_msgs::CanState::*AMI_NOT_SELECTED* 10)
(intern "*AMI_ACCELERATION*" (find-package "EUFS_MSGS::CANSTATE"))
(shadow '*AMI_ACCELERATION* (find-package "EUFS_MSGS::CANSTATE"))
(defconstant eufs_msgs::CanState::*AMI_ACCELERATION* 11)
(intern "*AMI_SKIDPAD*" (find-package "EUFS_MSGS::CANSTATE"))
(shadow '*AMI_SKIDPAD* (find-package "EUFS_MSGS::CANSTATE"))
(defconstant eufs_msgs::CanState::*AMI_SKIDPAD* 12)
(intern "*AMI_AUTOCROSS*" (find-package "EUFS_MSGS::CANSTATE"))
(shadow '*AMI_AUTOCROSS* (find-package "EUFS_MSGS::CANSTATE"))
(defconstant eufs_msgs::CanState::*AMI_AUTOCROSS* 13)
(intern "*AMI_TRACK_DRIVE*" (find-package "EUFS_MSGS::CANSTATE"))
(shadow '*AMI_TRACK_DRIVE* (find-package "EUFS_MSGS::CANSTATE"))
(defconstant eufs_msgs::CanState::*AMI_TRACK_DRIVE* 14)
(intern "*AMI_AUTONOMOUS_DEMO*" (find-package "EUFS_MSGS::CANSTATE"))
(shadow '*AMI_AUTONOMOUS_DEMO* (find-package "EUFS_MSGS::CANSTATE"))
(defconstant eufs_msgs::CanState::*AMI_AUTONOMOUS_DEMO* 15)
(intern "*AMI_ADS_INSPECTION*" (find-package "EUFS_MSGS::CANSTATE"))
(shadow '*AMI_ADS_INSPECTION* (find-package "EUFS_MSGS::CANSTATE"))
(defconstant eufs_msgs::CanState::*AMI_ADS_INSPECTION* 16)
(intern "*AMI_ADS_EBS*" (find-package "EUFS_MSGS::CANSTATE"))
(shadow '*AMI_ADS_EBS* (find-package "EUFS_MSGS::CANSTATE"))
(defconstant eufs_msgs::CanState::*AMI_ADS_EBS* 17)
(intern "*AMI_DDT_INSPECTION_A*" (find-package "EUFS_MSGS::CANSTATE"))
(shadow '*AMI_DDT_INSPECTION_A* (find-package "EUFS_MSGS::CANSTATE"))
(defconstant eufs_msgs::CanState::*AMI_DDT_INSPECTION_A* 18)
(intern "*AMI_DDT_INSPECTION_B*" (find-package "EUFS_MSGS::CANSTATE"))
(shadow '*AMI_DDT_INSPECTION_B* (find-package "EUFS_MSGS::CANSTATE"))
(defconstant eufs_msgs::CanState::*AMI_DDT_INSPECTION_B* 19)
(intern "*AMI_MANUAL*" (find-package "EUFS_MSGS::CANSTATE"))
(shadow '*AMI_MANUAL* (find-package "EUFS_MSGS::CANSTATE"))
(defconstant eufs_msgs::CanState::*AMI_MANUAL* 20)
(defclass eufs_msgs::CanState
  :super ros::object
  :slots (_as_state _ami_state _mission_flag ))

(defmethod eufs_msgs::CanState
  (:init
   (&key
    ((:as_state __as_state) 0)
    ((:ami_state __ami_state) 0)
    ((:mission_flag __mission_flag) nil)
    )
   (send-super :init)
   (setq _as_state (round __as_state))
   (setq _ami_state (round __ami_state))
   (setq _mission_flag __mission_flag)
   self)
  (:as_state
   (&optional __as_state)
   (if __as_state (setq _as_state __as_state)) _as_state)
  (:ami_state
   (&optional __ami_state)
   (if __ami_state (setq _ami_state __ami_state)) _ami_state)
  (:mission_flag
   (&optional __mission_flag)
   (if __mission_flag (setq _mission_flag __mission_flag)) _mission_flag)
  (:serialization-length
   ()
   (+
    ;; uint16 _as_state
    2
    ;; uint16 _ami_state
    2
    ;; bool _mission_flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _as_state
       (write-word _as_state s)
     ;; uint16 _ami_state
       (write-word _ami_state s)
     ;; bool _mission_flag
       (if _mission_flag (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _as_state
     (setq _as_state (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ami_state
     (setq _ami_state (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _mission_flag
     (setq _mission_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get eufs_msgs::CanState :md5sum-) "6932da39aa5099a52c1cabee21cb9e9e")
(setf (get eufs_msgs::CanState :datatype-) "eufs_msgs/CanState")
(setf (get eufs_msgs::CanState :definition-)
      "# State of the Autonomous System
uint16 as_state

uint16 AS_OFF = 0
uint16 AS_READY = 1
uint16 AS_DRIVING = 2
uint16 AS_EMERGENCY_BRAKE = 3
uint16 AS_FINISHED = 4

# Mission indicator
uint16 ami_state

uint16 AMI_NOT_SELECTED = 10
uint16 AMI_ACCELERATION = 11
uint16 AMI_SKIDPAD = 12
uint16 AMI_AUTOCROSS = 13
uint16 AMI_TRACK_DRIVE = 14
uint16 AMI_AUTONOMOUS_DEMO = 15
uint16 AMI_ADS_INSPECTION = 16
uint16 AMI_ADS_EBS = 17
uint16 AMI_DDT_INSPECTION_A = 18
uint16 AMI_DDT_INSPECTION_B = 19
uint16 AMI_MANUAL = 20

# asserted true when mission can be started
bool mission_flag

")



(provide :eufs_msgs/CanState "6932da39aa5099a52c1cabee21cb9e9e")


