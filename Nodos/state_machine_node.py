#!/usr/bin/env python
# license removed for brevity

import rospy
from std_msgs.msg import String
from std_msgs.msg import Bool


mission_m = "Finished"
standstill_m = False
ebs_m = False
asms_on_m = False
asb_check_m = False
ts_active_m = False
r2d_m = False
brakes_engaged_m = False

def callback(data, param):

    rospy.loginfo(rospy.get_caller_id() + " " + param + " " + str(data.data))
    if param == "MISSION":
        mission_m = data.data
    elif param == "SS":
        standstill_m = data.data
    elif param == "EBS":
        ebs_m = data.data
    elif param == "ASMS":
        asms_on_m = data.data
    elif param == "ASB":
        asb_check_m = data.data
    elif param == "TS":
        ts_active_m = data.data
    elif param == "R2D":
        r2d_queue_m = data.data
    elif param == "BRAKES":
        brakes_engaged_m = data.data



def state_machine():
    global state
    state_m = ""
    rate = rospy.Rate(1)  # 1hz
    while not rospy.is_shutdown():

        if (ebs_m):
            if (mission_m == "Finished" and standstill_m):
                state_m = "AS Finished"
            else:
                state_m = "AS Emergency"
        else:
            if (mission_m != "Finished" and asms_on_m and asb_check_m and ts_active_m):
                if (r2d_m):
                    state_m = "AS Driving"
                else:
                    if (brakes_engaged_m):
                        state_m = "AS Ready"
                    else:
                        state_m = "AS Off"
            else:
                state_m = "AS Off"

        rospy.loginfo(state_m)
        state.publish(state_m)
        rate.sleep()

if __name__ == '__main__':

    rospy.init_node('state_machine', anonymous=True)

    rospy.Subscriber("MISSION", String, callback, callback_args="MISSION")
    rospy.Subscriber("SS", Bool, callback=callback, callback_args="SS")
    rospy.Subscriber("EBS", Bool, callback=callback, callback_args="EBS")
    rospy.Subscriber("ASMS", Bool, callback=callback, callback_args="ASMS")
    rospy.Subscriber("ASB", Bool, callback=callback, callback_args="ASB")
    rospy.Subscriber("TS", Bool, callback=callback, callback_args="TS")
    rospy.Subscriber("R2D", Bool, callback=callback, callback_args="R2D")
    rospy.Subscriber("BRAKES", Bool, callback=callback, callback_args="BRAKES")

    state = rospy.Publisher('STATE', String, queue_size=10)

    state_machine()
