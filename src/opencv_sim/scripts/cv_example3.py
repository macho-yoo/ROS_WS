#!/usr/bin/env python
#-*- coding:utf-8 -*-

import rospy
from sensor_msgs.msg import CompressedImage
from cv_bridge import CvBridge

import cv2
import numpy as np

class ImageSubscriber(object):
	def __init__(self):
		rospy.Subscriber("/image_jpeg/compressed", CompressedImage, self.compressed_image_callback)
		self.Bridge = CvBridge()

	# ===================================================
	#                   CALLBACK FUNCTION
	# ===================================================
	def compressed_image_callback(self, image):
		self.frame = self.Bridge.compressed_imgmsg_to_cv2(image)
		## frame --> OpenCV에서 사용하는 Image Type으로 변환이 되었음
		## frame 변수에 영상 처리 진행하면 됩니다. 640 x 480 Image
		
		
		# #좌표점은좌상->우상->좌하->우하
		# pts1= np.float32([[200,260],[445,260],[65,430],[570,430]])
		# #좌표의이동점
		# pts2= np.float32([[10,10],[630, 10],[10,470],[630,470]])
		# #pts1의좌표에표시.perspective변환후이동점확인.

		# M= cv2.getPerspectiveTransform(pts1,pts2)
		# dst= cv2.warpPerspective(self.frame, M, (640, 480))

		# cv2.imshow("perspective", dst)

		
		cv2.namedWindow("perspective")
		cv2.createTrackbar('left_up_point_x',"perspective",200,640,self.nothing)
		cv2.createTrackbar('left_up_point_y',"perspective",260,480,self.nothing)
		l_u_x = cv2.getTrackbarPos('left_up_point_x',"perspective")
		l_u_y = cv2.getTrackbarPos('left_up_point_y',"perspective")

		cv2.createTrackbar('right_up_point_x',"perspective",445,640,self.nothing)
		cv2.createTrackbar('right_up_point_y',"perspective",260,480,self.nothing)
		r_u_x = cv2.getTrackbarPos('right_up_point_x',"perspective")
		r_u_y = cv2.getTrackbarPos('right_up_point_y',"perspective")

		cv2.createTrackbar('left_down_point_x',"perspective",65,640,self.nothing)
		cv2.createTrackbar('left_down_point_y',"perspective",430,480,self.nothing)
		l_d_x = cv2.getTrackbarPos('left_down_point_x',"perspective")
		l_d_y = cv2.getTrackbarPos('left_down_point_y',"perspective")

		cv2.createTrackbar('right_down_point_x',"perspective",570,640,self.nothing)
		cv2.createTrackbar('right_down_point_y',"perspective",430,480,self.nothing)
		r_d_x = cv2.getTrackbarPos('right_down_point_x',"perspective")
		r_d_y = cv2.getTrackbarPos('right_down_point_y',"perspective")

		pts1 = np.float32([[l_u_x,l_u_y],[r_u_x,r_u_y],[l_d_x,l_d_y],[r_d_x,r_d_y]])
		pts2= np.float32([[10,10],[630, 10],[10,470],[630,470]])


		M= cv2.getPerspectiveTransform(pts1,pts2)
		dst= cv2.warpPerspective(self.frame, M, (640, 480))

		cv2.imshow("perspective", dst)
		cv2.circle(self.frame,(l_u_x,l_u_y),10,(255,0,0),-1)
		cv2.circle(self.frame,(r_u_x,r_u_y),10,(0,255,0),-1)
		cv2.circle(self.frame,(l_d_x,l_d_y),10,(0,0,255),-1)
		cv2.circle(self.frame,(r_d_x,r_d_y),10,(0,255,255),-1)
		cv2.imshow("image", self.frame)



		cv2.waitKey(1)

	def nothing(self, x):
		pass


def run():
	rospy.init_node("ImageSubscriber")
	ImageSubscriber()
	rospy.spin()

if __name__ == '__main__':
	run()