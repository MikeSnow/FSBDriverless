#!/usr/bin/env python
# license removed for brevity

import rospy
from std_msgs.msg import String
from std_msgs.msg import Bool
import Jetson.GPIO as GPIO # sudo pip install Jetson.GPIO

state_m = ""
def callback(data, param):
    global state_m
    rospy.loginfo(rospy.get_caller_id() + " " + param + " " + str(data.data))
    if param == "STATE":
        state_m = data.data
def ledManagment():
    global state_m

    if (state_m == "AS Off"):
        led = 0
    elif (state_m == "AS Emergency"):
        led = 0
    elif (state_m == "AS Finished"):
        led = 0
    elif (state_m == "AS Driving"):
        led = 1
    elif (state_m == "AS Ready"):
        led = 1
    else:
        led = 0
    switchLed(led)
def switchLed(led):
    if led == 1:
        GPIO.output(79, GPIO.HIGH)
    else:
        GPIO.output(79, GPIO.LOW)

def initializeGPIO():
    # GPIO.setmode(GPIO.BOARD)
    # or
    GPIO.setmode(GPIO.BCM)
    # or
    # GPIO.setmode(GPIO.CVM)
    # or
    # GPIO.setmode(GPIO.TEGRA_SOC)

    GPIO.setwarnings(False)
    GPIO.setup(79, GPIO.OUT, initial=GPIO.LOW)

def main():
    global state_m
    state_m = ""
    rate = rospy.Rate(1)  # 1hz
    while not rospy.is_shutdown():

        rospy.loginfo(state_m)
        ledManagment()
        rate.sleep()

if __name__ == '__main__':

    rospy.init_node('led_managment', anonymous=True)
    rospy.Subscriber("STATE", String, callback, callback_args="STATE")
    initializeGPIO()
    main()
