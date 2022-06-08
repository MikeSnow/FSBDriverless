;; Auto-generated. Do not edit!


(when (boundp 'eufs_msgs::ConeWithCovariance)
  (if (not (find-package "EUFS_MSGS"))
    (make-package "EUFS_MSGS"))
  (shadow 'ConeWithCovariance (find-package "EUFS_MSGS")))
(unless (find-package "EUFS_MSGS::CONEWITHCOVARIANCE")
  (make-package "EUFS_MSGS::CONEWITHCOVARIANCE"))

(in-package "ROS")
;;//! \htmlinclude ConeWithCovariance.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass eufs_msgs::ConeWithCovariance
  :super ros::object
  :slots (_point _covariance ))

(defmethod eufs_msgs::ConeWithCovariance
  (:init
   (&key
    ((:point __point) (instance geometry_msgs::Point :init))
    ((:covariance __covariance) (make-array 4 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _point __point)
   (setq _covariance __covariance)
   self)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _point
    (send _point :serialization-length)
    ;; float64[4] _covariance
    (* 8    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _point
       (send _point :serialize s)
     ;; float64[4] _covariance
     (dotimes (i 4)
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;; float64[4] _covariance
   (dotimes (i (length _covariance))
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get eufs_msgs::ConeWithCovariance :md5sum-) "bec8795f508b6f8adfedec6fd5758082")
(setf (get eufs_msgs::ConeWithCovariance :datatype-) "eufs_msgs/ConeWithCovariance")
(setf (get eufs_msgs::ConeWithCovariance :definition-)
      "# Cone information

geometry_msgs/Point point
float64[4] covariance
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :eufs_msgs/ConeWithCovariance "bec8795f508b6f8adfedec6fd5758082")


