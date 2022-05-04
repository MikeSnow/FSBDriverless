;; Auto-generated. Do not edit!


(when (boundp 'eufs_msgs::WheelSpeeds)
  (if (not (find-package "EUFS_MSGS"))
    (make-package "EUFS_MSGS"))
  (shadow 'WheelSpeeds (find-package "EUFS_MSGS")))
(unless (find-package "EUFS_MSGS::WHEELSPEEDS")
  (make-package "EUFS_MSGS::WHEELSPEEDS"))

(in-package "ROS")
;;//! \htmlinclude WheelSpeeds.msg.html


(defclass eufs_msgs::WheelSpeeds
  :super ros::object
  :slots (_steering _lf_speed _rf_speed _lb_speed _rb_speed ))

(defmethod eufs_msgs::WheelSpeeds
  (:init
   (&key
    ((:steering __steering) 0.0)
    ((:lf_speed __lf_speed) 0.0)
    ((:rf_speed __rf_speed) 0.0)
    ((:lb_speed __lb_speed) 0.0)
    ((:rb_speed __rb_speed) 0.0)
    )
   (send-super :init)
   (setq _steering (float __steering))
   (setq _lf_speed (float __lf_speed))
   (setq _rf_speed (float __rf_speed))
   (setq _lb_speed (float __lb_speed))
   (setq _rb_speed (float __rb_speed))
   self)
  (:steering
   (&optional __steering)
   (if __steering (setq _steering __steering)) _steering)
  (:lf_speed
   (&optional __lf_speed)
   (if __lf_speed (setq _lf_speed __lf_speed)) _lf_speed)
  (:rf_speed
   (&optional __rf_speed)
   (if __rf_speed (setq _rf_speed __rf_speed)) _rf_speed)
  (:lb_speed
   (&optional __lb_speed)
   (if __lb_speed (setq _lb_speed __lb_speed)) _lb_speed)
  (:rb_speed
   (&optional __rb_speed)
   (if __rb_speed (setq _rb_speed __rb_speed)) _rb_speed)
  (:serialization-length
   ()
   (+
    ;; float32 _steering
    4
    ;; float32 _lf_speed
    4
    ;; float32 _rf_speed
    4
    ;; float32 _lb_speed
    4
    ;; float32 _rb_speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _steering
       (sys::poke _steering (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lf_speed
       (sys::poke _lf_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rf_speed
       (sys::poke _rf_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lb_speed
       (sys::poke _lb_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rb_speed
       (sys::poke _rb_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _steering
     (setq _steering (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lf_speed
     (setq _lf_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rf_speed
     (setq _rf_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lb_speed
     (setq _lb_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rb_speed
     (setq _rb_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get eufs_msgs::WheelSpeeds :md5sum-) "032f31bfd4ad524fa752e1644fb5e2ab")
(setf (get eufs_msgs::WheelSpeeds :datatype-) "eufs_msgs/WheelSpeeds")
(setf (get eufs_msgs::WheelSpeeds :definition-)
      "float32 steering
float32 lf_speed
float32 rf_speed
float32 lb_speed
float32 rb_speed

# Steering is in radians
# Speeds are in RPM

")



(provide :eufs_msgs/WheelSpeeds "032f31bfd4ad524fa752e1644fb5e2ab")


