#!/usr/bin/env python
#-*- coding:utf-8 -*-

import rospy
import math
from sensor_msgs.msg import PointCloud
from geometry_msgs.msg import Point32

class sphere_drawer():
    def __init__(self):
        rospy.init_node("sphere_drawer")
        self.pub = rospy.Publisher("sphere_pc", PointCloud, queue_size=1)
        rospy.Timer(rospy.Duration(1.0), self.timer_CB)
        rospy.spin()

    def timer_CB(self, event):
        tmp_data = PointCloud()
        tmp_data.header.stamp = rospy.Time.now()
        tmp_data.header.frame_id = "velodyne"

        num_points = 50
        radius = 5

        for i in range(num_points):
            for j in range(num_points):
                theta = i * 2 * math.pi / num_points ## z방향에 대한 각도
                phi = j * 2 * math.pi / num_points ## x, y 평면에서의 각
                tmp = Point32()
                tmp.x = radius * math.sin(theta) * math.cos(phi)
                tmp.y = radius * math.sin(theta) * math.sin(phi)
                tmp.z = radius * math.cos(theta)
                tmp_data.points.append(tmp)

        self.pub.publish(tmp_data)
        rospy.loginfo("publish points")

if __name__ == '__main__':
    sphere_drawer()
