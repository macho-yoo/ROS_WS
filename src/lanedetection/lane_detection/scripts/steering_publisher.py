#! /usr/bin/env python
# -*- coding: utf-8 -*-

import cv2
import numpy as np
from sensor_msgs.msg import CompressedImage, Image
from std_msgs.msg import Float32
import rospy
from cv_bridge import CvBridge
from dynamic_reconfigure.server import Server
from lane_detection.cfg import image_processingConfig

class LaneDetection:
    def __init__(self):
        self.TARGET_PTS = np.float32([[100, 0], [540, 0], [100, 480], [540, 480]])
        rospy.init_node("steering_node")
        srv = Server(image_processingConfig, self.configure_cb)
        self.cvbridge = CvBridge() 
        rospy.Subscriber("/image_jpeg/compressed", CompressedImage, self.Image_CB)
        self.frame_pub = rospy.Publisher("/wecar/frame", Image, queue_size=1)
        self.bev_pub = rospy.Publisher("/wecar/bev_frame", Image, queue_size=1)
        self.color_detect_pub = rospy.Publisher("/wecar/color_detected_frame", Image, queue_size=1)
        self.bev_result_pub = rospy.Publisher("/wecar/bev_result_frame", Image, queue_size=1)
        self.result_pub = rospy.Publisher("/wecar/result_frame", Image, queue_size=1)
        self.steering_pub = rospy.Publisher("/wecar/steering_angle", Float32, queue_size=5)

    def configure_cb(self, config, level):
        self.ORIGINAL_PTS = np.float32([[config.left_upper_x_pos, config.left_upper_y_pos],\
                                        [config.right_upper_x_pos, config.right_upper_y_pos],\
                                        [config.left_lower_x_pos, config.left_lower_y_pos],\
                                        [config.right_lower_x_pos, config.right_lower_y_pos]])
        self.YELLOW_LANE_LOW = np.array([config.yellow_h_low, config.yellow_l_low, config.yellow_s_low]) 
        self.YELLOW_LANE_HIGH = np.array([config.yellow_h_high, config.yellow_l_high, config.yellow_s_high])
        self.WHITE_LANE_LOW = np.array([config.white_h_low, config.white_l_low, config.white_s_low]) 
        self.WHITE_LANE_HIGH = np.array([config.white_h_high, config.white_l_high, config.white_s_high])
        self.matrix = cv2.getPerspectiveTransform(self.ORIGINAL_PTS, self.TARGET_PTS)
        self.inv_matrix = cv2.getPerspectiveTransform(self.TARGET_PTS, self.ORIGINAL_PTS)
        self.REF_LINE_X = config.ref_line_x
        return config

    def Image_CB(self, img):
        frame = self.cvbridge.compressed_imgmsg_to_cv2(img, "bgr8")
        bird_eye_image = self.bird_eye(frame)
        colored_image = self.color_detect(bird_eye_image)
        self.sliding_list_left = self.sliding_left(colored_image)
        self.sliding_list_right = self.sliding_right(colored_image)
        print("left : {}".format(self.sliding_list_left))
        print("right : {}".format(self.sliding_list_right))

        frame_steer = self.steering(frame, self.sliding_list_left, self.sliding_list_right)
        
        viz = True
        #visualization
        if viz:
            # 1.birdeye points
            arr1 = map(tuple, self.ORIGINAL_PTS)
            for i, pos in enumerate(arr1):
                cv2.circle(frame, pos, 5,(255,100 ,i*50), -1)
            self.frame_pub.publish(self.cvbridge.cv2_to_imgmsg(frame,"bgr8"))
            self.bev_pub.publish(self.cvbridge.cv2_to_imgmsg(bird_eye_image,"bgr8"))

            # 2.list points
            for i, pos in enumerate(self.sliding_list_left):
                cv2.circle(bird_eye_image, pos, 5,(255,i*20,0), -1)
            for i, pos in enumerate(self.sliding_list_right):
                cv2.circle(bird_eye_image, pos, 5,(i*20,255,0), -1)
            self.result_pub.publish(self.cvbridge.cv2_to_imgmsg(cv2.warpPerspective(bird_eye_image, self.inv_matrix, (640, 480)),"bgr8"))        
            cv2.line(bird_eye_image, (self.REF_LINE_X, 0), (self.REF_LINE_X, 480), (0, 255, 0), 3, -1)
            self.color_detect_pub.publish(self.cvbridge.cv2_to_imgmsg(colored_image))
            self.bev_result_pub.publish(self.cvbridge.cv2_to_imgmsg(bird_eye_image,"bgr8"))        
            # result = cv2.warpPerspective(bird_eye_image, self.inv_matrix, (640, 480))

            # cv2.imshow("frame", frame)
            # cv2.imshow("bird_eye_and_colored_image", bird_eye_image)
            # cv2.imshow("colored_image", colored_image)
            # cv2.waitKey(1)

    def steering(self, frame, sliding_list_left, sliding_list_right):
        x_left = []
        x_right = []
        self.REF_LINE_X = 320
        if len(sliding_list_left) == 0:
            left_distance = 0
            left_x = 0
        else:
            left_x = sliding_list_left[-1][0]
            left_distance = self.REF_LINE_X - sliding_list_left[-1][0] #should be positive
            # print("slidng_lisjlklljkljkljkljkljkljkljljukljkljkljklkjlt_left[-1][0] : {}".format(sliding_list_left[-1][0]))
        if len(sliding_list_right) == 0:
            right_distance = 0
            right_x = 0
        else:
            right_x = sliding_list_right[-1][0]
            right_distance = self.REF_LINE_X - sliding_list_right[-1][0] #should be negative
            # print("sliding_list_right[-1][0] : {}".format(sliding_list_right[-1][0]))
        # print("left_distance : {}".format(left_distance))
        # print("right_distance : {}".format(right_distance))
        #extract x coordinates from sliding_list_left
        for i in range(0, len(sliding_list_left)): 
            x_left.append(sliding_list_left[i][0])
        
        left_diff_arr = np.diff(x_left)
        divider = len(left_diff_arr)
        if divider == 0:
            divider = 1
        left_diff_sum = np.sum(left_diff_arr)
        left_avg = int(left_diff_sum/divider)
        
        # print("left_diff_arr{}".format(left_diff_arr))
        # print("left_diff_sum{}".format(left_diff_sum))
        # print("left_avg{}".format(left_avg))

        #remove inappropriate cases 
        for i in range(0, len(left_diff_arr)): 
            if (left_diff_arr[i] > (left_avg +80)) or (left_diff_arr[i] < (left_avg - 80)): #the value 80 can be modified
                self.sliding_list_left = []
                left_diff_sum = 0

        #extract x coordinates from sliding_list_right
        for i in range(0, len(sliding_list_right)): 
            x_right.append(sliding_list_right[i][0])
        right_diff_arr = np.diff(x_right)
        divider = len(right_diff_arr)
        if divider == 0:
            divider = 1
        right_diff_sum = np.sum(right_diff_arr)
        right_avg = int(right_diff_sum/divider)

        #remove inappropriate cases
        for i in range(0, len(right_diff_arr)): 
            if (right_diff_arr[i] > (right_avg +80)) or (right_diff_arr[i] < (right_avg - 80)): #the value 80 can be modified
                self.sliding_list_right = []
                right_diff_sum = 0
        
        #publish average values divided by 100
        left_dist_th = 320
        right_dist_th = -320
        print("left_x={}".format(left_x))
        print("right_x={}".format(right_x))
        print("left_dist={}".format(left_distance))
        print("right_dist={}".format(right_distance))

        if left_distance == 0 and right_distance != 0:
            # dist_steer = right_distance - right_dist_th 
            dist_steer = 150 
        elif right_distance == 0 and left_distance != 0:
            # dist_steer = left_distance + left_dist_th
            dist_steer = -150
        elif right_distance == 0 and left_distance == 0:
            dist_steer = 0
        else:
            dist_steer = right_distance + left_distance
        avg_val = float((left_diff_sum + right_diff_sum)/2) *-1
        if avg_val > 100:
            avg_val = 100
        elif avg_val < -100:
            avg_val = -100
        avg_val /= 100
        avg_val *= 15
        print("avg_val : {}".format(avg_val )) # 우회전이 필요할 때 음수, 좌회전이 필요할때 양수
        print("dist_steer : {}".format(dist_steer)) #음수면 왼쪽차선과 가까움 . 양수면 오른쪽과 가까움
        
        self.steering_pub.publish(avg_val*(-0.03) + dist_steer * 0.003)
        #self.steering_pub.publish(avg_val*(-0.012))
        #self.steering_pub.publish(dist_steer * 0.06)
    
        return frame #return frame is for visualization

    def sliding_left(self, img):
        left_list = []
        '''
        row: starting from y=179 to y=460, moving by 40
        col: starting from x=19 to x=300, moving by 5
        '''
        for j in range(179, img.shape[0] - 20, 40): 
            j_list = []
            for i in range(19, int(img.shape[1]/2) - 20, 5):
                num_sum = np.sum(img[j - 19:j + 21, i - 19:i + 21]) #window size is 20*20
                if num_sum > 100000: #pick (i,j) where its num_sum is over 100000
                    j_list.append(i)
            try:
                len_list = [] 
                #cluster if a gap between elements in the list is over 5
                result = np.split(j_list, np.where(np.diff(j_list) > 5)[0] + 1) 
                for k in range(0, len(result)):
                    len_list.append(len(result[k])) #append the lengths of each cluster
                largest_integer = max(len_list)
            
                for l in range(0, len(result)):
                    if len(result[l]) == largest_integer: 
                        avg = int(np.sum(result[l]) / len(result[l])) #average
                        left_list.append((avg, j)) #avg points of left side 
            except:
                continue
        return left_list

    
    def sliding_right(self, img):
        right_list = []
        '''
        row: starting from x=179 ORIGINAL_PTS = np.float32([[100, 240], [540, 240], [0, 380], [640, 380]]) #for driving
        TARGET_PTS = np.float32([[0, 0], [640, 0], [0, 480], [640, 480]])to y=560, moving by 40
        col: starting from x=320 to y=620, moving by 5
        '''
        for j in range(179, img.shape[0] - 20, 40): 
            j_list = []
            for i in range(int(img.shape[1]/2), img.shape[1] - 20, 5): 
                num_sum = np.sum(img[j - 19:j + 21, i - 19:i + 21]) #window size is 20*20
                if num_sum > 100000: #pick (i,j) where its num_sum is over 100000
                    j_list.append(i)
            try:
                len_list = []
                #cluster if a gap between elements in the list is over 5
                result = np.split(j_list, np.where(np.diff(j_list) > 5)[0] + 1) 
                for k in range(0, len(result)):
                    len_list.append(len(result[k])) #append the lengths of each cluster
                largest_integer = max(len_list)
            
                for l in range(0, len(result)):
                    if len(result[l]) == largest_integer: 
                        avg = int(np.sum(result[l]) / len(result[l])) #average
                        right_list.append((avg, j)) #avg points of left side 
            except:
                continue
        return right_list

    def color_detect(self, img):
        # print(self.YELLOW_LANE_LOW)
        # print(self.YELLOW_LANE_HIGH)
        hls = cv2.cvtColor(img, cv2.COLOR_BGR2HLS)
        mask_white = cv2.inRange(hls, self.WHITE_LANE_LOW, self.WHITE_LANE_HIGH)
        mask_yellow = cv2.inRange(hls, self.YELLOW_LANE_LOW, self.YELLOW_LANE_HIGH)
        mask = cv2.bitwise_or(mask_white, mask_yellow)
        # cv2.imshow("hls", hls)
        # cv2.imshow("mask_yellow", mask_yellow)
        # cv2.imshow("mask_white", mask_white)
        # cv2.imshow("h", hls[:,:,0])
        # cv2.imshow("s", hls[:,:,1])
        # cv2.imshow("v", hls[:,:,2])
        # cv2.waitKey(1)
        # return mask_white
        # return mask_yellow
        return mask

    def bird_eye(self, frame):
        result = cv2.warpPerspective(frame, self.matrix, (640, 480))
        return result

if __name__ == '__main__':
    a = LaneDetection()
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("program down")