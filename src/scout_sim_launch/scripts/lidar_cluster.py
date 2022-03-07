#!/usr/bin/env python
#-*- coding:utf-8 -*-

import rospy
import math
##Subscriber
## Topic : Lidar2D
## MSG_Type : sensor_msgs/LaserScan

##Publisher
## Topic : cluster
## MSG_Type : obstacle_detector /Obstacles (obstacle_detector/SegementObstacle)

from sensor_msgs.msg import LaserScan
from obstacle_detector.msg import Obstacles, SegmentObstacle

class lidar_clustering():
	def __init__(self):
		rospy.init_node('lidar_clustering')
		rospy.Subscriber('lidar2D',LaserScan,self.clustering_callback)
		self.obs_pub = rospy.Publisher("cluster", Obstacles,queue_size=1)
		self.DISTANCE_TH = 0.3

		rospy.loginfo('Initialized')
		rospy.spin()

	def clustering_callback(self,data):

		Line_Segment = SegmentObstacle()
		Segment = [[0,0]]
		Obstacle_data = Obstacles()
		Obstacle_data.header.stamp = rospy.Time.now()
		Obstacle_data.header.frame_id = data.header.frame_id

		for i, r in enumerate(data.ranges): #index --> 0~359
			if i > len(data.ranges) -2 :
				continue
			else :
				D = self.calc_distance(data.ranges[i],data.ranges[i+1],data.angle_increment)
				if data.ranges[i+1] >= data.range_max:
					Segment.append([i+1,i+1]) ##새로운 segment로 등록
				elif D < self.DISTANCE_TH:
					Segment[-1].pop(-1)
					Segment[-1].append(i+1)
				else:
					Segment.append([i+1,i+1]) ##새로운 segment로 등록

		for i in Segment:
			if len(i) != 2:
				pass
			
			else:
				tmp_data = SegmentObstacle()
				tmp_data.first_point.x = data.ranges[i[0]] * math.cos(data.angle_min + data.angle_increment * i[0])
				tmp_data.first_point.y = data.ranges[i[0]] * math.sin(data.angle_min + data.angle_increment * i[0])
				tmp_data.last_point.x = data.ranges[i[1]] * math.cos(data.angle_min + data.angle_increment * i[1])
				tmp_data.last_point.y = data.ranges[i[1]] * math.sin(data.angle_min + data.angle_increment * i[1])
				Obstacle_data.segments.append(tmp_data)
		self. obs_pub.publish(Obstacle_data)

	def calc_distance(self, r1, r2, theta_diff):
		D = r1 ** 2 + r2 ** 2 - 2 * r1 * r2 * math.cos(theta_diff)
		return (D ** 0.5)

if __name__=='__main__':
	lidar_clustering()