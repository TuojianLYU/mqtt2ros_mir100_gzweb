#!/usr/bin/env python3

import rospy
import time
from std_msgs.msg import Bool

# Global variable to store the current state of /mir_status
mir_status = Bool()

def mir_input_callback(msg):
    global mir_status
    # Set /mir_status to the opposite of the input message
    mir_status.data = not msg.data
    print(msg.data)

def mir_status_publisher():
    global mir_status
    
    # Initialize the ROS node
    rospy.init_node('mir_status_publisher_node')

    # Create a publisher for the /mir_status topic
    pub = rospy.Publisher('/mir_status', Bool, queue_size=10)

    # Subscribe to the /mir_input topic
    rospy.Subscriber('/mir_input', Bool, mir_input_callback)

    # Set the publishing rate
    rate = rospy.Rate(10)  # 10 Hz

    # Loop until the node is terminated
    while not rospy.is_shutdown():
        # Publish the mir_status message
        pub.publish(mir_status)

        # Sleep to maintain the publishing rate
        time.sleep(3)

if __name__ == '__main__':
    try:
        mir_status_publisher()
    except rospy.ROSInterruptException:
        pass
