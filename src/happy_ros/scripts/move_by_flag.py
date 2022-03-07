#!/usr/bin/env python

import rospy
from std_msgs.msg import Int32
from geometry_msgs.msg import Twist

def move_by_flag():

	rospy.init_node('move_by_flag',anonymous=False)

	rospy.Subscriber('set_flag',Int32)
	rospy.spin()

	rospy.Publisher('/turtle1/cmd_vel', TWist, queue_size=10)

	vel_ref = Twist()
	