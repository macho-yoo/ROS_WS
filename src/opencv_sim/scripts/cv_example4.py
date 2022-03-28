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
		
		cv2.namedWindow('image')
		cv2.createTrackbar('x', 'image', 0, self.frame.shape[1], self.nothing)
		## cv2.createTrackbar --> 이미지에 트랙바 추가
		## (트랙바 이름, 추가할 창의 이름(namedWindow 참고), 최소값, 최대값, 변경 시 할 내용)
		cv2.createTrackbar('y', 'image', 0, self.frame.shape[0], self.nothing)
		cv2.createTrackbar('radius', 'image', 0, 100, self.nothing)
		cv2.createTrackbar('R', 'image', 0, 255, self.nothing)
		cv2.createTrackbar('G', 'image', 0, 255, self.nothing)
		cv2.createTrackbar('B', 'image', 0, 255, self.nothing)
		x= cv2.getTrackbarPos('x', 'image')
		## cv2.getTrackbarPos --> 이미지에 있는 트랙바의 값을 받아 오기
		## (트랙바의 이름, 받아올 창의 이름)
		y= cv2.getTrackbarPos('y', 'image')
		radius= cv2.getTrackbarPos('radius', 'image')
		b= cv2.getTrackbarPos('B', 'image')		
		r= cv2.getTrackbarPos('R', 'image')
		g= cv2.getTrackbarPos('G', 'image')
		b= cv2.getTrackbarPos('B', 'image')

		cv2.circle(self.frame,(x,y),radius,(b, g, r),-1)

		hsv = cv2.cvtColor(self.frame, cv2.COLOR_BGR2HSV)

		lower_blue= np.array([110,50,50])
		upper_blue= np.array([130,255,255])

		## lower_white, higher_white --> 흰색 차선만 남게 (HSV) cv2.inRange(hsv, lower_white, higher_white)
		## lower_yellow, higher_yellow --> 노란색 차선만 남게 (RGB) cv2.inRange(self.frame, lower_yellow, higher_yellow)
		cv2.namedWindow("white")
		cv2.createTrackbar('l_h', 'white', 42, 255, self.nothing)
		cv2.createTrackbar('h_h', 'white', 139, 255, self.nothing)
		cv2.createTrackbar('l_s', 'white', 0, 255, self.nothing)
		cv2.createTrackbar('h_s', 'white', 28, 255, self.nothing)
		cv2.createTrackbar('l_v', 'white', 226, 255, self.nothing)
		cv2.createTrackbar('h_v', 'white', 255, 255, self.nothing)
		l_h= cv2.getTrackbarPos('l_h', 'white')
		h_h= cv2.getTrackbarPos('h_h', 'white')
		l_s= cv2.getTrackbarPos('l_s', 'white')
		h_s= cv2.getTrackbarPos('h_s', 'white')
		l_v= cv2.getTrackbarPos('l_v', 'white')
		h_v= cv2.getTrackbarPos('h_v', 'white')

		lower_white = np.array([l_h, l_s, l_v])
		higher_white = np.array([h_h, h_s, h_v])

		# lower_white = np.array([80, 0, 200])
		# higher_white = np.array([160, 30, 255])
		lane_white = cv2.inRange(hsv, lower_white, higher_white)
		res= cv2.bitwise_or(self.frame, self.frame, mask=lane_white)
		# cv2.imshow("white", lane_white)

		lower_yellow = np.array([0, 180, 200])
		higher_yellow = np.array([50, 230, 255])
		lane_yellow = cv2.inRange(self.frame, lower_yellow, higher_yellow)
		# cv2.imshow("yellow", lane_yellow)

		lane_mask = cv2.bitwise_or(lane_yellow, lane_white)
		# cv2.imshow("lane_mask", lane_mask)
		lanes = cv2.bitwise_or(self.frame, self.frame, mask=lane_mask)
		# cv2.imshow("lanes", lanes)

		cv2.namedWindow("perspective")
		cv2.createTrackbar('lu_x', 'perspective', 272, self.frame.shape[1], self.nothing)
		cv2.createTrackbar('lu_y', 'perspective', 247, self.frame.shape[0], self.nothing)
		cv2.createTrackbar('ru_x', 'perspective', 398, self.frame.shape[1], self.nothing)
		cv2.createTrackbar('ru_y', 'perspective', 247, self.frame.shape[0], self.nothing)
		cv2.createTrackbar('ll_x', 'perspective', 0, self.frame.shape[1], self.nothing)
		cv2.createTrackbar('ll_y', 'perspective', 480, self.frame.shape[0], self.nothing)
		cv2.createTrackbar('rl_x', 'perspective', 640, self.frame.shape[1], self.nothing)
		cv2.createTrackbar('rl_y', 'perspective', 480, self.frame.shape[0], self.nothing)
		lu_x = cv2.getTrackbarPos('lu_x', 'perspective')
		lu_y = cv2.getTrackbarPos('lu_y', 'perspective')
		ru_x = cv2.getTrackbarPos('ru_x', 'perspective')
		ru_y = cv2.getTrackbarPos('ru_y', 'perspective')
		ll_x = cv2.getTrackbarPos('ll_x', 'perspective')
		ll_y = cv2.getTrackbarPos('ll_y', 'perspective')
		rl_x = cv2.getTrackbarPos('rl_x', 'perspective')
		rl_y = cv2.getTrackbarPos('rl_y', 'perspective')

		#좌표점은좌상->우상->좌하->우하
		pts1= np.float32([[lu_x,lu_y],[ru_x,ru_y],[ll_x,ll_y],[rl_x,rl_y]])
		#좌표의이동점
		pts2= np.float32([[200,10],[440, 10],[200,470],[440,470]])
		#pts1의좌표에표시.perspective변환후이동점확인.

		M= cv2.getPerspectiveTransform(pts1,pts2)
		dst= cv2.warpPerspective(self.frame, M, (640, 480))



		# cv2.imshow("perspective_tf", dst)

		cv2.circle(self.frame,(lu_x,lu_y),10,(255,0,0),-1)
		cv2.circle(self.frame,(ru_x,ru_y),10,(0,255,0),-1)
		cv2.circle(self.frame,(ll_x,ll_y),10,(0,0,255),-1)
		cv2.circle(self.frame,(rl_x,rl_y),10,(0,255,255),-1)
		
		canny = cv2.Canny(lane_mask, 50, 100)
		canny[0:255, :] = 0
		cv2.imshow("canny", canny)

		cv2.namedWindow("line_detection")
		cv2.createTrackbar('rho', 'line_detection', 1, 300, self.nothing)
		cv2.createTrackbar('theta', 'line_detection', 1, 180, self.nothing)
		cv2.createTrackbar('num', 'line_detection', 90, 300, self.nothing)
		cv2.createTrackbar('min_theta', 'line_detection', 0, 180, self.nothing)
		cv2.createTrackbar('max_theta', 'line_detection', 180, 180, self.nothing)
		
		rho_th = cv2.getTrackbarPos('rho', 'line_detection')
		theta_th = cv2.getTrackbarPos('theta', 'line_detection')
		num_th = cv2.getTrackbarPos('num', 'line_detection')
		min_deg = cv2.getTrackbarPos('min_theta', 'line_detection')
		max_deg = cv2.getTrackbarPos('max_theta', 'line_detection')



		#lines = cv2.HoughLines(canny, rho_th, theta_th * np.pi/180, num_th, min_theta=min_deg*np.pi/180, max_theta=max_deg*np.pi/180)
		lines = cv2.HoughLines(canny, rho_th, theta_th * np.pi/180, num_th)
		if lines != None:
			for i in range(len(lines)):
				for rho, theta in lines[i]:
					a = np.cos(theta)
					b = np.sin(theta)
					x0 = a*rho
					y0 = b*rho
					x1 = int(x0 + 1000*(-b))
					y1 = int(y0+1000*(a))
					x2 = int(x0 - 1000*(-b))
					y2 = int(y0 -1000*(a))
					cv2.line(self.frame,(x1,y1),(x2,y2),( 0,0,255),2)


		#이미지에서blue영역만검출(inRange함수사용)
		mask= cv2.inRange(hsv,lower_blue,upper_blue)
		## cv2.inRange --> 특정 영역의 값만 남겨줍니다. (이진화)
		## (입력 이미지, Lower Threshold, Higher Threshold)
		## ex) lower --> [110, 50, 50], higher --> [130, 255, 255]
		## 전체 픽셀을 각각 확인해서, 값이 첫번째 값이 110 ~ 130, 두번째 값이 50 ~ 255, 마지막 값이 50 ~ 255
		## 조건을 만족하는 값만 255로 바꾸고, 나머지는 다 0으로 처리 
		# cv2.imshow("maskedImage", mask)


		## cv2.cvtColor --> 이미지 컬러 스페이스 변경
		## 변경할 이미지와 변경할 내용이 포함되어야 함

		# cv2.imshow("hsv", hsv)
		# cv2.imshow("h", hsv[:, :, 0])
		# cv2.imshow("s", hsv[:, :, 1])
		# cv2.imshow("v", hsv[:, :, 2])

		cv2.imshow("line_detection", self.frame)
		# cv2.imshow("b", self.frame[:, :, 0])
		# cv2.imshow("g", self.frame[:, :, 1])
		# cv2.imshow("r", self.frame[:, :, 2])
		cv2.waitKey(1)

	def nothing(self, x):
		pass

	# 실행 방법
	# cd ~/catkin_ws/
	# catkin build
	# source devel/setup.bash
	# rosrun opencv_sim cv_example1.py


def run():
	rospy.init_node("ImageSubscriber")
	ImageSubscriber()
	rospy.spin()

if __name__ == '__main__':
	run()