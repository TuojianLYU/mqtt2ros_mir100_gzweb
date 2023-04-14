import rospy
from move_base_msgs.msg import MoveBaseActionGoal
from geometry_msgs.msg import PoseStamped, Quaternion
from tf.transformations import quaternion_from_euler

def goal_position(x, y, yaw):
    goal = MoveBaseActionGoal()
    goal.header.stamp = rospy.Time.now()
    goal.goal.target_pose.header.frame_id = 'map'

    goal.goal.target_pose.pose.position.x = x
    goal.goal.target_pose.pose.position.y = y
    goal.goal.target_pose.pose.position.z = 0

    q = quaternion_from_euler(0, 0, yaw)
    goal.goal.target_pose.pose.orientation = Quaternion(*q)

    return goal

rospy.init_node('mir_manual_goal_sender')
goal_pub = rospy.Publisher('/move_base/goal', MoveBaseActionGoal, queue_size=1)
rospy.sleep(1)

# Set the desired goal position (x, y) and orientation (yaw)
x, y, yaw = 8.0, 8.0, 0.0
goal = goal_position(x, y, yaw)
goal_pub.publish(goal)
