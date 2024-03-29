;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::ResourceState)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'ResourceState (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::RESOURCESTATE")
  (make-package "MIR_MSGS::RESOURCESTATE"))

(in-package "ROS")
;;//! \htmlinclude ResourceState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*ROBOT_POSITION*" (find-package "MIR_MSGS::RESOURCESTATE"))
(shadow '*ROBOT_POSITION* (find-package "MIR_MSGS::RESOURCESTATE"))
(defconstant mir_msgs::ResourceState::*ROBOT_POSITION* 0)
(intern "*STAGING_POSITION*" (find-package "MIR_MSGS::RESOURCESTATE"))
(shadow '*STAGING_POSITION* (find-package "MIR_MSGS::RESOURCESTATE"))
(defconstant mir_msgs::ResourceState::*STAGING_POSITION* 1)
(intern "*CHARGING_STATION*" (find-package "MIR_MSGS::RESOURCESTATE"))
(shadow '*CHARGING_STATION* (find-package "MIR_MSGS::RESOURCESTATE"))
(defconstant mir_msgs::ResourceState::*CHARGING_STATION* 2)
(intern "*AREA*" (find-package "MIR_MSGS::RESOURCESTATE"))
(shadow '*AREA* (find-package "MIR_MSGS::RESOURCESTATE"))
(defconstant mir_msgs::ResourceState::*AREA* 3)
(intern "*ELEVATOR_ENTRY_POSITION*" (find-package "MIR_MSGS::RESOURCESTATE"))
(shadow '*ELEVATOR_ENTRY_POSITION* (find-package "MIR_MSGS::RESOURCESTATE"))
(defconstant mir_msgs::ResourceState::*ELEVATOR_ENTRY_POSITION* 26)
(intern "*ELEVATOR_POSITION*" (find-package "MIR_MSGS::RESOURCESTATE"))
(shadow '*ELEVATOR_POSITION* (find-package "MIR_MSGS::RESOURCESTATE"))
(defconstant mir_msgs::ResourceState::*ELEVATOR_POSITION* 25)

(defun mir_msgs::ResourceState-to-symbol (const)
  (cond
        ((= const 0) 'mir_msgs::ResourceState::*ROBOT_POSITION*)
        ((= const 1) 'mir_msgs::ResourceState::*STAGING_POSITION*)
        ((= const 2) 'mir_msgs::ResourceState::*CHARGING_STATION*)
        ((= const 3) 'mir_msgs::ResourceState::*AREA*)
        ((= const 26) 'mir_msgs::ResourceState::*ELEVATOR_ENTRY_POSITION*)
        ((= const 25) 'mir_msgs::ResourceState::*ELEVATOR_POSITION*)
        (t nil)))

(defclass mir_msgs::ResourceState
  :super ros::object
  :slots (_assigned _type _path_idx _distance _collision_point _resource_geometry _queue _name _guid ))

(defmethod mir_msgs::ResourceState
  (:init
   (&key
    ((:assigned __assigned) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:type __type) 0)
    ((:path_idx __path_idx) 0)
    ((:distance __distance) 0.0)
    ((:collision_point __collision_point) (instance geometry_msgs::Point :init))
    ((:resource_geometry __resource_geometry) ())
    ((:queue __queue) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:name __name) "")
    ((:guid __guid) "")
    )
   (send-super :init)
   (setq _assigned __assigned)
   (setq _type (round __type))
   (setq _path_idx (round __path_idx))
   (setq _distance (float __distance))
   (setq _collision_point __collision_point)
   (setq _resource_geometry __resource_geometry)
   (setq _queue __queue)
   (setq _name (string __name))
   (setq _guid (string __guid))
   self)
  (:assigned
   (&optional __assigned)
   (if __assigned (setq _assigned __assigned)) _assigned)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:path_idx
   (&optional __path_idx)
   (if __path_idx (setq _path_idx __path_idx)) _path_idx)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:collision_point
   (&rest __collision_point)
   (if (keywordp (car __collision_point))
       (send* _collision_point __collision_point)
     (progn
       (if __collision_point (setq _collision_point (car __collision_point)))
       _collision_point)))
  (:resource_geometry
   (&rest __resource_geometry)
   (if (keywordp (car __resource_geometry))
       (send* _resource_geometry __resource_geometry)
     (progn
       (if __resource_geometry (setq _resource_geometry (car __resource_geometry)))
       _resource_geometry)))
  (:queue
   (&optional __queue)
   (if __queue (setq _queue __queue)) _queue)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:guid
   (&optional __guid)
   (if __guid (setq _guid __guid)) _guid)
  (:serialization-length
   ()
   (+
    ;; string[] _assigned
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _assigned)) 4
    ;; uint32 _type
    4
    ;; uint32 _path_idx
    4
    ;; float32 _distance
    4
    ;; geometry_msgs/Point _collision_point
    (send _collision_point :serialization-length)
    ;; geometry_msgs/Point[] _resource_geometry
    (apply #'+ (send-all _resource_geometry :serialization-length)) 4
    ;; string[] _queue
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _queue)) 4
    ;; string _name
    4 (length _name)
    ;; string _guid
    4 (length _guid)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _assigned
     (write-long (length _assigned) s)
     (dolist (elem _assigned)
       (write-long (length elem) s) (princ elem s)
       )
     ;; uint32 _type
       (write-long _type s)
     ;; uint32 _path_idx
       (write-long _path_idx s)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Point _collision_point
       (send _collision_point :serialize s)
     ;; geometry_msgs/Point[] _resource_geometry
     (write-long (length _resource_geometry) s)
     (dolist (elem _resource_geometry)
       (send elem :serialize s)
       )
     ;; string[] _queue
     (write-long (length _queue) s)
     (dolist (elem _queue)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _guid
       (write-long (length _guid) s) (princ _guid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _assigned
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _assigned (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _assigned i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; uint32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _path_idx
     (setq _path_idx (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Point _collision_point
     (send _collision_point :deserialize buf ptr-) (incf ptr- (send _collision_point :serialization-length))
   ;; geometry_msgs/Point[] _resource_geometry
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _resource_geometry (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _resource_geometry)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string[] _queue
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _queue (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _queue i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _guid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _guid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mir_msgs::ResourceState :md5sum-) "57fcc2e24446160c25e1fac48251c1da")
(setf (get mir_msgs::ResourceState :datatype-) "mir_msgs/ResourceState")
(setf (get mir_msgs::ResourceState :definition-)
      "string[] assigned # A list of IPs of all assigned robots (Areas can have more than one robot assigned at a time)
uint32 ROBOT_POSITION=0
uint32 STAGING_POSITION=1
uint32 CHARGING_STATION=2
uint32 AREA=3
uint32 ELEVATOR_ENTRY_POSITION=26
uint32 ELEVATOR_POSITION=25
uint32 type # The resource type
uint32 path_idx # The index from the global path in which the robot gets into the position
float32 distance # The distance from the robot to the resource
geometry_msgs/Point collision_point # The collision point with the resource
geometry_msgs/Point[] resource_geometry # The resource_geometry
string[] queue # The queue for a resource. It's a list of robots ips.
string name # The name of the resource
string guid # The guid of the resource

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :mir_msgs/ResourceState "57fcc2e24446160c25e1fac48251c1da")


