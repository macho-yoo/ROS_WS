#!/usr/bin/env python

import rospy 
from std_msgs.msg import Int32


def pub_five_one():
	rospy.init_node('pub_five_one', anonymous=False)
	flag_pub = rospy.Publisher('set_flag',Int32,queue_size=10)
 	rate = rospy.Rate(0.5)

	while not rospy.is_shutdown():
		flag_ref = 1
		rospy.loginfo(flag_ref)
		flag_pub.publish(flag_ref)
		rate.sleep()

if __name__ == '__main__':
	try:
		pub_five_one()
	except rospy.ROSInterruptException:
		pass
