#!/usr/bin/env python
#-*- coding:utf-8 -*-

import rospy
from geometry_msgs.msg import Twist

NODE_NAME = "turtle_mover"
TOPIC_NAME = "cmd_vel"
MSG_TYPE = Twist
PUBLISH_HZ = 10.0


class topic_publisher():
	def __init__(self):
		rospy.init_node(NODE_NAME)
		self.publisher1 = rospy.Publisher(TOPIC_NAME, MSG_TYPE, queue_size=1)
		rospy.Timer(rospy.Duration(1.0 / PUBLISH_HZ), self.timer_CB)
		rospy.spin()

	def timer_CB(self, event):
		publishing_data = Twist()

		publishing_data.linear.x = rospy.get_param("~linear_speed",1.0) # 파라미터 서버에 linear_speed 가이씅면 그거 쓰고 없으면 1.0 쓴다~
		publishing_data.linear.y = 0.0
		publishing_data.linear.z = 0.0

		publishing_data.angular.x = 0
		publishing_data.angular.y = 0
		publishing_data.angular.z = rospy.get_param("~angular_speed",1.0) #물결이 있냐 없냐 차이는
                                                                          # 물결을 붙이면 rospy.get_param 후에 NODE_NAME이 붙고 angular_speed를 찾고
                                                                          #물결을 안붙이면 그냥 angular_speed 를 찾는다 
                                                                          #따라서 파라밑터가 노드 안에 있냐 밖에 있냐 차이ㄱ ㅏ있으므로 잘 써보
		self.publisher1.publish(publishing_data)

if __name__ == '__main__':
	topic_publisher()