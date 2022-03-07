#!/usr/bin/rnv python

import rospy
from std_msgs.msg import String

class simplePubNode:
	def __init__(self):
		self.simple_pub = rpspy.Publisher(
			"/msg",
			String,
			queue_size=5)


	def pubMsg(self):
		self.simple_pub.publish("hello world")


def run():
	rospy.init_node("simple_pub")
	spn = simplePubNode()
	rqte = rospy.Rate(5)

	while not rospy.is_shutdown():
		spn.pubMsg()
		rate.sleep()

if __name__ == '__main__':
	run()