; Auto-generated. Do not edit!


(cl:in-package mir_actions-msg)


;//! \htmlinclude MirMoveBaseActionGoal.msg.html

(cl:defclass <MirMoveBaseActionGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal
    :reader goal
    :initarg :goal
    :type mir_actions-msg:MirMoveBaseGoal
    :initform (cl:make-instance 'mir_actions-msg:MirMoveBaseGoal)))
)

(cl:defclass MirMoveBaseActionGoal (<MirMoveBaseActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MirMoveBaseActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MirMoveBaseActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_actions-msg:<MirMoveBaseActionGoal> is deprecated: use mir_actions-msg:MirMoveBaseActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MirMoveBaseActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:header-val is deprecated.  Use mir_actions-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <MirMoveBaseActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:goal_id-val is deprecated.  Use mir_actions-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <MirMoveBaseActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:goal-val is deprecated.  Use mir_actions-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MirMoveBaseActionGoal>) ostream)
  "Serializes a message object of type '<MirMoveBaseActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MirMoveBaseActionGoal>) istream)
  "Deserializes a message object of type '<MirMoveBaseActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MirMoveBaseActionGoal>)))
  "Returns string type for a message object of type '<MirMoveBaseActionGoal>"
  "mir_actions/MirMoveBaseActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MirMoveBaseActionGoal)))
  "Returns string type for a message object of type 'MirMoveBaseActionGoal"
  "mir_actions/MirMoveBaseActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MirMoveBaseActionGoal>)))
  "Returns md5sum for a message object of type '<MirMoveBaseActionGoal>"
  "02e7851b6545fbc2c28721f1d17a031f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MirMoveBaseActionGoal)))
  "Returns md5sum for a message object of type 'MirMoveBaseActionGoal"
  "02e7851b6545fbc2c28721f1d17a031f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MirMoveBaseActionGoal>)))
  "Returns full string definition for message of type '<MirMoveBaseActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%MirMoveBaseGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: mir_actions/MirMoveBaseGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%#move type~%int16 BASE_MOVE = 0~%int16 GLOBAL_MOVE = 1~%int16 RELATIVE_MOVE = 2~%int16 RELATIVE_MARKER_MOVE = 3~%int16 DOCKING_MOVE = 4~%int16 DOCKING_GLOBAL_MOVE = 5~%int16 PATH_TYPE = 6~%int16 move_task~%~%#shared parameters~%geometry_msgs/PoseStamped target_pose~%string target_guid~%~%#global move parameters~%float64 goal_dist_threshold~%float64 goal_orientation_threshold~%nav_msgs/Path path~%float32 max_plan_time~%bool clear_costmaps~%bool pause_command~%bool continue_command~%~%#relative move parameters~%float64 yaw~%bool collision_detection~%bool collision_avoidance~%float64 disable_collision_check_dist~%float64 max_linear_speed~%float64 max_rotational_speed~%float64 pid_dist_offset~%float64 target_offset~%bool only_collision_detection~%float64 timeout~%~%#docking move parameters~%int32 pattern_type~%int32 pattern_value~%bool only_track~%bool same_goal~%string pose_frame~%geometry_msgs/Pose2D pose~%geometry_msgs/Pose2D offset~%float64 bar_length~%float64 bar_distance~%float64 shelf_leg_asymmetry_x~%float64 tolerance~%~%#Path type~%mir_msgs/MirLocalPlannerPathTypes path_type~%geometry_msgs/PoseStamped start_pose~%# float64 timeout~%~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: mir_msgs/MirLocalPlannerPathTypes~%uint8 REVERSE_TROLLEY_STANDARD=1~%uint8 REVERSE_TROLLEY_FAST=2~%uint8 REVERSE_TROLLEY_COMPACT=3~%~%~%uint8 path_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MirMoveBaseActionGoal)))
  "Returns full string definition for message of type 'MirMoveBaseActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%MirMoveBaseGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: mir_actions/MirMoveBaseGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%#move type~%int16 BASE_MOVE = 0~%int16 GLOBAL_MOVE = 1~%int16 RELATIVE_MOVE = 2~%int16 RELATIVE_MARKER_MOVE = 3~%int16 DOCKING_MOVE = 4~%int16 DOCKING_GLOBAL_MOVE = 5~%int16 PATH_TYPE = 6~%int16 move_task~%~%#shared parameters~%geometry_msgs/PoseStamped target_pose~%string target_guid~%~%#global move parameters~%float64 goal_dist_threshold~%float64 goal_orientation_threshold~%nav_msgs/Path path~%float32 max_plan_time~%bool clear_costmaps~%bool pause_command~%bool continue_command~%~%#relative move parameters~%float64 yaw~%bool collision_detection~%bool collision_avoidance~%float64 disable_collision_check_dist~%float64 max_linear_speed~%float64 max_rotational_speed~%float64 pid_dist_offset~%float64 target_offset~%bool only_collision_detection~%float64 timeout~%~%#docking move parameters~%int32 pattern_type~%int32 pattern_value~%bool only_track~%bool same_goal~%string pose_frame~%geometry_msgs/Pose2D pose~%geometry_msgs/Pose2D offset~%float64 bar_length~%float64 bar_distance~%float64 shelf_leg_asymmetry_x~%float64 tolerance~%~%#Path type~%mir_msgs/MirLocalPlannerPathTypes path_type~%geometry_msgs/PoseStamped start_pose~%# float64 timeout~%~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: mir_msgs/MirLocalPlannerPathTypes~%uint8 REVERSE_TROLLEY_STANDARD=1~%uint8 REVERSE_TROLLEY_FAST=2~%uint8 REVERSE_TROLLEY_COMPACT=3~%~%~%uint8 path_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MirMoveBaseActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MirMoveBaseActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'MirMoveBaseActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
