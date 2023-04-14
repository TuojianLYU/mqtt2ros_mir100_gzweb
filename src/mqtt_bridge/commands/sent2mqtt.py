import rospy
import json
import paho.mqtt.client as mqtt
from move_base_msgs.msg import MoveBaseActionGoal
from geometry_msgs.msg import PoseStamped, Quaternion
from tf.transformations import quaternion_from_euler

def on_publish(client, userdata, mid):
    print("Message published.")
    client.disconnect()

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

# MQTT configuration
broker_address = "localhost"
topic = "/target_pos"

rospy.init_node('mir_manual_goal_sender')

# Set the desired goal position (x, y) and orientation (yaw)
x, y, yaw = 8.0, 8.0, 0.0
goal = goal_position(x, y, yaw)

# Create the message payload
payload = {
    "x": goal.goal.target_pose.pose.position.x,
    "y": goal.goal.target_pose.pose.position.y,
    "theta": goal.goal.target_pose.pose.position.z,
    "orientation": {
        "x": goal.goal.target_pose.pose.orientation.x,
        "y": goal.goal.target_pose.pose.orientation.y,
        "z": goal.goal.target_pose.pose.orientation.z,
        "w": goal.goal.target_pose.pose.orientation.w
    }
}
payload_str = json.dumps(payload)

# Create MQTT client and set callbacks
client = mqtt.Client()
client.on_publish = on_publish

# Connect to the broker and publish the message
client.connect(broker_address)
client.publish(topic, payload_str)

# Run the event loop
client.loop_start()
