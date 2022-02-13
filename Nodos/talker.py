#!/usr/bin/env python
# license removed for brevity

import rospy
from std_msgs.msg import String
from std_msgs.msg import Bool

def talker():

    mission = rospy.Publisher('MISSION', String, queue_size=10)
    standstill = rospy.Publisher('SS', Bool, queue_size=10)
    ebs = rospy.Publisher('EBS', Bool, queue_size=10)
    asms_on = rospy.Publisher('ASMS', Bool, queue_size=10)
    asb_check = rospy.Publisher('ASB', Bool, queue_size=10)
    ts_active = rospy.Publisher('TS', Bool, queue_size=10)
    r2d = rospy.Publisher('R2D', Bool, queue_size=10)
    brakes_engaged = rospy.Publisher('BRAKES', Bool, queue_size=10)

    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(1)  # 1hz
    while not rospy.is_shutdown():

        # String
        mission_m = "Finished"
        # Bool
        standstill_m = False
        ebs_m = False
        asms_on_m = False
        asb_check_m = False
        ts_active_m = False
        r2d_m = False
        brakes_engaged_m = False

        # messages get printed to screen, it gets written to the Node's log file, and it gets written to rosout
        rospy.loginfo(mission_m)
        rospy.loginfo(standstill_m)
        rospy.loginfo(ebs_m)
        rospy.loginfo(asms_on_m)
        rospy.loginfo(asb_check_m)
        rospy.loginfo(ts_active_m)
        rospy.loginfo(r2d_m)
        rospy.loginfo(brakes_engaged_m)

        # Publish
        mission.publish(mission_m)
        standstill.publish(standstill_m)
        ebs.publish(ebs_m)
        asms_on.publish(asms_on_m)
        asb_check.publish(asb_check_m)
        ts_active.publish(ts_active_m)
        r2d.publish(r2d_m)
        brakes_engaged.publish(brakes_engaged_m)

        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass