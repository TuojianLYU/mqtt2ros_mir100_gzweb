# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#feedback
#shared
int8 NOT_READY = -1
int8 UNKNOWN = -2
int8 WAITING_FOR_FLEET = -3
int8 COLLISION = -4

#global move states
int8 PLANNING = 0
int8 CONTROLLING = 1
int8 CLEARING = 2

#relative move states
int8 DOCKING = 3

#shared feedback
int8 state

#global move feedback
geometry_msgs/PoseStamped base_position

#relative move feedback
geometry_msgs/PoseStamped current_goal
geometry_msgs/PoseStamped dist_to_goal

#docking move feedback
geometry_msgs/Pose2D pose
bool marker_inversion

#path_types
    #reverse_trolly
int8 MOVING_FORWARD = 10
int8 MOVING_BACKWARD = 11

