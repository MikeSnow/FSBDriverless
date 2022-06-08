;; Auto-generated. Do not edit!


(when (boundp 'eufs_msgs::Costmap)
  (if (not (find-package "EUFS_MSGS"))
    (make-package "EUFS_MSGS"))
  (shadow 'Costmap (find-package "EUFS_MSGS")))
(unless (find-package "EUFS_MSGS::COSTMAP")
  (make-package "EUFS_MSGS::COSTMAP"))

(in-package "ROS")
;;//! \htmlinclude Costmap.msg.html


(defclass eufs_msgs::Costmap
  :super ros::object
  :slots (_x_bounds_min _x_bounds_max _y_bounds_min _y_bounds_max _pixels_per_meter _channel0 _channel1 _channel2 _channel3 ))

(defmethod eufs_msgs::Costmap
  (:init
   (&key
    ((:x_bounds_min __x_bounds_min) 0.0)
    ((:x_bounds_max __x_bounds_max) 0.0)
    ((:y_bounds_min __y_bounds_min) 0.0)
    ((:y_bounds_max __y_bounds_max) 0.0)
    ((:pixels_per_meter __pixels_per_meter) 0.0)
    ((:channel0 __channel0) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:channel1 __channel1) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:channel2 __channel2) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:channel3 __channel3) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _x_bounds_min (float __x_bounds_min))
   (setq _x_bounds_max (float __x_bounds_max))
   (setq _y_bounds_min (float __y_bounds_min))
   (setq _y_bounds_max (float __y_bounds_max))
   (setq _pixels_per_meter (float __pixels_per_meter))
   (setq _channel0 __channel0)
   (setq _channel1 __channel1)
   (setq _channel2 __channel2)
   (setq _channel3 __channel3)
   self)
  (:x_bounds_min
   (&optional __x_bounds_min)
   (if __x_bounds_min (setq _x_bounds_min __x_bounds_min)) _x_bounds_min)
  (:x_bounds_max
   (&optional __x_bounds_max)
   (if __x_bounds_max (setq _x_bounds_max __x_bounds_max)) _x_bounds_max)
  (:y_bounds_min
   (&optional __y_bounds_min)
   (if __y_bounds_min (setq _y_bounds_min __y_bounds_min)) _y_bounds_min)
  (:y_bounds_max
   (&optional __y_bounds_max)
   (if __y_bounds_max (setq _y_bounds_max __y_bounds_max)) _y_bounds_max)
  (:pixels_per_meter
   (&optional __pixels_per_meter)
   (if __pixels_per_meter (setq _pixels_per_meter __pixels_per_meter)) _pixels_per_meter)
  (:channel0
   (&optional __channel0)
   (if __channel0 (setq _channel0 __channel0)) _channel0)
  (:channel1
   (&optional __channel1)
   (if __channel1 (setq _channel1 __channel1)) _channel1)
  (:channel2
   (&optional __channel2)
   (if __channel2 (setq _channel2 __channel2)) _channel2)
  (:channel3
   (&optional __channel3)
   (if __channel3 (setq _channel3 __channel3)) _channel3)
  (:serialization-length
   ()
   (+
    ;; float64 _x_bounds_min
    8
    ;; float64 _x_bounds_max
    8
    ;; float64 _y_bounds_min
    8
    ;; float64 _y_bounds_max
    8
    ;; float64 _pixels_per_meter
    8
    ;; float32[] _channel0
    (* 4    (length _channel0)) 4
    ;; float32[] _channel1
    (* 4    (length _channel1)) 4
    ;; float32[] _channel2
    (* 4    (length _channel2)) 4
    ;; float32[] _channel3
    (* 4    (length _channel3)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x_bounds_min
       (sys::poke _x_bounds_min (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x_bounds_max
       (sys::poke _x_bounds_max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_bounds_min
       (sys::poke _y_bounds_min (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_bounds_max
       (sys::poke _y_bounds_max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pixels_per_meter
       (sys::poke _pixels_per_meter (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32[] _channel0
     (write-long (length _channel0) s)
     (dotimes (i (length _channel0))
       (sys::poke (elt _channel0 i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _channel1
     (write-long (length _channel1) s)
     (dotimes (i (length _channel1))
       (sys::poke (elt _channel1 i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _channel2
     (write-long (length _channel2) s)
     (dotimes (i (length _channel2))
       (sys::poke (elt _channel2 i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _channel3
     (write-long (length _channel3) s)
     (dotimes (i (length _channel3))
       (sys::poke (elt _channel3 i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x_bounds_min
     (setq _x_bounds_min (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x_bounds_max
     (setq _x_bounds_max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_bounds_min
     (setq _y_bounds_min (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_bounds_max
     (setq _y_bounds_max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pixels_per_meter
     (setq _pixels_per_meter (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32[] _channel0
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _channel0 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _channel0 i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _channel1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _channel1 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _channel1 i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _channel2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _channel2 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _channel2 i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _channel3
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _channel3 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _channel3 i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get eufs_msgs::Costmap :md5sum-) "ae50f9e6b8b35116ac4e867c7b195b7f")
(setf (get eufs_msgs::Costmap :datatype-) "eufs_msgs/Costmap")
(setf (get eufs_msgs::Costmap :definition-)
      "# costmap for the MPPI algorithm in the form of a 2D image

# the bounds give the scale and limits of the image
float64 x_bounds_min
float64 x_bounds_max
float64 y_bounds_min
float64 y_bounds_max

# he pixels per meter are used in scaling the image up
float64 pixels_per_meter

# the costmap contains 4 channels of floats
float32[] channel0
float32[] channel1
float32[] channel2
float32[] channel3


")



(provide :eufs_msgs/Costmap "ae50f9e6b8b35116ac4e867c7b195b7f")


