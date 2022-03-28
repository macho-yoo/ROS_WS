#!/usr/bin/env python
# -*- coding: utf-8 -*-


## imu subscriber
## print angular z 

import rospy
from sensor_msgs.msg import Imu
from scout_msgs.msg import ScoutStatus
## scout_msgs/ScoutStatus
from nav_msgs.msg import Odometry
## nav_msgs/Odometry --> Publish
import math

import tf
from tf.transformations import quaternion_from_euler


class imu_sub():
    def __init__(self):
        rospy.init_node("imu_sub")
        rospy.Subscriber("imu", Imu, self.Imu_callback)
        rospy.Subscriber("scout_status", ScoutStatus, self.Status_CB)

        self.odom_pub = rospy.Publisher("scout_odom", Odometry, queue_size=1)
        self.yaw = 0
        self.x = 0
        self.y = 0
        self.old_v = 0
        self.old_phi_dot = 0
        self.old_time = 0
        self.status_old_time = 0
        self.old_x_dot = 0
        self.old_y_dot = 0
        rospy.Timer(rospy.Duration(1.0 / 30), self.timer_CB) ## 30hz
        rospy.spin()
    
    def timer_CB(self, event):
        publish_data = Odometry()
        (qx, qy, qz, qw) = quaternion_from_euler(0, 0, self.yaw)
        publish_data.header.stamp = rospy.Time.now()
        publish_data.header.frame_id = "odom"
        publish_data.child_frame_id = "base_link"
        publish_data.pose.pose.position.x = self.x
        publish_data.pose.pose.position.y = self.y
        publish_data.pose.pose.orientation.x = qx
        publish_data.pose.pose.orientation.y = qy
        publish_data.pose.pose.orientation.z = qz
        publish_data.pose.pose.orientation.w = qw
        publish_data.twist.twist.linear.x = self.old_v
        publish_data.twist.twist.angular.z = self.old_phi_dot
        self.odom_pub.publish(publish_data)
        br = tf.TransformBroadcaster()
        br.sendTransform((self.x, self.y, 0), (qx, qy, qz, qw), rospy.Time.now(), "base_link", "odom")
    	rospy.loginfo("Transform BroadCasting...")
    
    def Status_CB(self, data):
        self.v = data.linear_velocity
        self.status_current_time = rospy.Time.now().to_sec()
        if abs(self.v) < 0.001:
            self.v = 0
        
        self.x_dot = self.v * math.cos(self.yaw)
        self.y_dot = self.v * math.sin(self.yaw)
        if self.status_old_time != 0:
            time_diff = self.status_current_time - self.status_old_time
            self.x += self.old_x_dot * time_diff
            self.y += self.old_y_dot * time_diff
        self.status_old_time = self.status_current_time
        self.old_x_dot = self.x_dot
        self.old_y_dot = self.y_dot
        
    def Imu_callback(self, data):
        phi_dot = data.angular_velocity.z
        self.current_time = data.header.stamp.to_sec()
        if abs(phi_dot) < 0.001:
            phi_dot = 0
            
        if self.old_time != 0:
            time_diff = self.current_time - self.old_time
            self.yaw += self.old_phi_dot * time_diff
        self.old_time = self.current_time
        self.old_phi_dot = phi_dot

if __name__ == '__main__':
	imu_sub()