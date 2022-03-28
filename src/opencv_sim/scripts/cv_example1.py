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
		cv2.line(self.frame,(0,0),(200,400),(255,0,0),5)
		## cv2.line --> 영상 위에 선을 그리는 함수, (그림 그릴 이미지, 시작점, 끝나는점, 색깔(B, G, R), 두께)

		cv2.rectangle(self.frame,(384,0),(510,128),(0,255,0), 3)
		## cv2.rectangle --> 영상 위에 사각형을 그리는 함수, (그림 그릴 이미지, 좌측 상단점, 우측 하단점, 색깔(B, G, R), 두께 (-1을 입력하면, 내부를 채워줌))

		cv2.circle(self.frame,(447,63),63,(0,255,255),-1)
		## cv2.circle --> 영상 위에 원을 그리는 함수, (그림 그릴 이미지, 중심 점, 반지름, 색깔, 두께)

		cv2.ellipse(self.frame,(256,256),(100,50), 0, 0,180,(255, 255, 0),-1)
		## cv2.ellipse --> 영상 위에 타원을 그리는 함수 (그림 그릴 이미지, 중심점, (장축, 단축), 기울기, 시작각도, 끝각도, 색깔, 두께)
		
		pts= np.array([[10,5],[20,30],[70,20],[50,10]],np.int32)
		pts=pts.reshape((-1,2))
		self.frame= cv2.polylines(self.frame,[pts],True,(0,255,255), 3)
		## cv2.polylines --> 영상 위에 다각형을 그리는 함수 (그림 그릴 이미지, 연결할 점의 리스트, 닫힌 도형 여부, 색깔, 두께 )

		font= cv2.FONT_HERSHEY_SIMPLEX
		cv2.putText(self.frame,'NewMsg',(10,300),font,4,(255,255,255),5,16)
		## cv2.putText --> 영상 위에 글씨를 쓰는 함수 (글씨 쓸 이미지, 쓸 내용, 쓰기 시작할 왼쪽 아래 점, 폰트, 크기, 색깔, 두께, 라인 연결 방법)

		# cv2.namedWindow('image')
		# cv2.setMouseCallback('image',self.draw_circle)
		# while True:
		# 	cv2.imshow("image", self.frame)
		# 	if cv2.waitKey(20)& 0xFF == 27:
		# 		break
		## 마우스 이벤트 하는건데 이미지 위에다 하는 것이기 떄문에 다음 이미지로 넘어가려면 esc눌러야함

	def draw_circle(self, event,x,y,flags,param):
		print(x, y)
		print(event)
		if event == cv2.EVENT_LBUTTONDOWN:
			self.frame = cv2.circle(self.frame,(x,y),100,(255,0,0),-1)



def run():
	rospy.init_node("ImageSubscriber")
	ImageSubscriber()
	rospy.spin()

if __name__ == '__main__':
	run()
