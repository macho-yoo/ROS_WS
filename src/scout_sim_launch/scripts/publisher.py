#!/usr/bin/env python
#-*- coding:utf-8 -*-

import rospy
from geometry_msgs.msg import Twist
from geometry_msgs.msg import PolygonStamped
from geometry_msgs.msg import Point32
from visualization_msgs.msg import Marker
import math

#NODE_NAME = "publisher_test"
#TOPIC_NAME = "Polygonn"
#MSG_TYPE = PolygonStamped
#PUBLISH_HZ = 10.0

NODE_NAME = "marker_publisher"
TOPIC_NAME = "cube_marker"
MSG_TYPE = Marker
PUBLISH_HZ = 10.0


class turtle_mover():
	def __init__(self):
		rospy.init_node(NODE_NAME)
		self.publisher1 = rospy.Publisher(TOPIC_NAME, MSG_TYPE, queue_size=10)
		rospy.Timer(rospy.Duration(1.0 / PUBLISH_HZ), self.timer_CB3)
		rospy.spin()

#	def timer_CB(self,event):
#		publishing_data = Twist()
#		########################
#		########################
#		self.publisher1.publish(publishing_data)


#	def timer_CB2(self,event):
#		pbl_data = PolygonStamped()
#		pbl_data.header.stamp = rospy.Time.now()
#		pbl_data.header.frame_id = 'base_link'
#
#		tmp_point = Point32()
#
#		for i in range(3):
#			tmp_point = Point32()	
#			tmp_point.x = math.cos(i)
#			tmp_point.y = math.sin(i)
#			tmp_point.z = 0
#			pbl_data.polygon.points.append(tmp_point)
#
#		print(pbl_data.polygon.points)
#		self.publisher1.publish(pbl_data)

	def timer_CB3(self,event):
		pbl_data = Marker()
		pbl_data.header.stamp = rospy.Time.now()
		pbl_data.header.frame_id = 'Marker_frame'

		pbl_data.type = 1

		pbl_data.pose.position.x = 0.0
		pbl_data.pose.position.y = 2.0
		pbl_data.pose.position.z = 2.0

		pbl_data.pose.orientation.x = 0.0
		pbl_data.pose.orientation.y = 0.2
		pbl_data.pose.orientation.z = 0.6
		pbl_data.pose.orientation.w = 0.5

		pbl_data.scale.x = 10.0
		pbl_data.scale.y = 10.0
		pbl_data.scale.z = 10.0

		pbl_data.color.r = 0.5
		pbl_data.color.g = 0.5
		pbl_data.color.b = 0.0
		pbl_data.color.a = 5.0

		self.publisher1.publish(pbl_data)

if __name__=='__main__':
	turtle_mover()