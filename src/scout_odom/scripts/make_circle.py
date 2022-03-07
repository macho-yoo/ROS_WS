#!/usr/bin/env python
#-*- coding:utf-8 -*-

import rospy
from sensor_msgs.msg import PointCloud
from geometry_msgs.msg import Point32
import math


class paint_circle():
    def __init__(self):
        rospy.init_node("circle")
        point_pub = rospy.Publisher("circle_topic", PointCloud, queue_size=1)
        publish_data = PointCloud()
        publish_data.header.stamp = rospy.Time.now()
        publish_data.header.frame_id = 'velodyne'

        rate = rospy.Rate(5)


        while not rospy.is_shutdown():
        	tmp_point = Point32()

        	for i in range(360):
        		x = math.cos(i)
        		y = math.sin(i)
        		tmp_point.x = x
        		tmp_point.y = y
        		tmp_point.z = 2.0 
        		publish_data.points.append(tmp_point)
        	publish_data.header.stamp = rospy.Time.now()
        	publish_data.header.frame_id = 'velodyne'
        	point_pub.publish(publish_data)
        	rate.sleep()








if __name__ == '__main__':
	paint_circle()
