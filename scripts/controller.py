#! /usr/bin/env python

import rospy
from std_msgs.msg import Float32
from geometry_msgs.msg import Twist

class Sub_wecar_Pub_cmd():
	def __init__(self):
		rospy.init_node("node1")
		rospy.Subscriber("/wecar/steering_angle", Float32, self.callback)
		self.cmd_pub = rospy.Publisher('/cmd_vel',Twist, queue_size=1)

	def callback(self, data):
		cmd_data = Twist()
		cmd_data.linear.x = 0.5
		cmd_data.angular.z = data.data 
		self.cmd_pub.publish(cmd_data)

if __name__ == '__main__':
    a = Sub_wecar_Pub_cmd()
    rospy.spin()

