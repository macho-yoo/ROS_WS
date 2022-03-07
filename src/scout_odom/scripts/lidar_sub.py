#!/usr/bin/env python
#-*- coding:utf-8 -*-

import rospy
from sensor_msgs.msg import LaserScan, PointCloud
from geometry_msgs.msg import Point32
#geometry_msgs/Point32
import math

## Rospy 실행 시 필요한 내용
## Node Name
## Subscriber 만드는데 필요한 내용
## Data type, Topic Name, Callback function
## Data type --> 패키지 또는 모듈 불러오기에서 정의가 필요
## /lidar2D [sensor_msgs/LaserScan]

## Publisher --> sensor_msgs/PointCloud 

class lidar_sub():
    def __init__(self):
        rospy.init_node("lidar_subscriber")
        rospy.Subscriber("lidar2D", LaserScan, self.lidar_CB)
        self.point_pub = rospy.Publisher("lidar_xyz", PointCloud, queue_size=1)
        rospy.spin()

    def lidar_CB(self, data):
        publish_data = PointCloud()
        # publish_data.header.stamp = data.header.stamp
        publish_data.header.stamp = rospy.Time.now()
        publish_data.header.frame_id = data.header.frame_id
        """
        [sensor_msgs/LaserScan]:
        std_msgs/Header header
          uint32 seq
          time stamp
          string frame_id
        float32 angle_min
        float32 angle_max
        float32 angle_increment
        float32 time_increment
        float32 scan_time
        float32 range_min
        float32 range_max
        float32[] ranges
        float32[] intensities
        """
        ## ranges 에 대응하는 각도를 계산 (radian or degree)
        ## ????????????????????????????????????????????
        ## ranges[0] ~ ranges[359]
        ## ranges[0] --> angle_min
        ## ranges[1] --> angle_min + 1 * angle_increment
        ## ranges[2] --> angle_min + 2 * angle_increment
        ## ranges[100] --> angle_min + 100 * angle_increment
        ## ranges[359] --> angle_min + 359 * angle_increment
        angles = []
        angles_degree = []
        #for i in range(360)
        ## ranges = [3, 5, 7, 9]
        ## for i, a in enumerate(ranges):
        ## i = 0, a = 3
        ## i = 1, a = 5
        ## i = 2, a = 7
        ## i = ,3 a = 9
        for i, r in enumerate(data.ranges):
            tmp_angle = data.angle_min + i * data.angle_increment
            angles.append(tmp_angle)
            angles_degree.append(tmp_angle * 180 / math.pi)
            x = r * math.cos(tmp_angle)
            y = r * math.sin(tmp_angle)
            tmp_point = Point32()
            tmp_point.x = x
            tmp_point.y = y
            tmp_point.z = 2.0
            publish_data.points.append(tmp_point)
            print("(x, y) = ({}, {})".format(x, y))
        self.point_pub.publish(publish_data)

        ranges = data.ranges
        ## ranges, angles --> r, theta
        # print(angles_degree)




if __name__ == '__main__':
    sub = lidar_sub()