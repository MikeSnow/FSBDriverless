import rospy
import math
import std_msgs.msg
import tf2_ros
import tf2_geometry_msgs
from sensor_msgs.msg import LaserScan
from geometry_msgs.msg import Point, Pose, Quaternion, Twist, Vector3
from eufs_msgs.msg import ConeArray

def callbackLS(msg):
    rangeMin = msg.range_min
    rangeMax = msg.range_max
    angleIncrement = msg.angle_increment
    angleMin = msg.angle_min
    angleMax = msg.angle_max

    angleTotal = angleMax-angleMin
    laserTotal = angleTotal/angleIncrement

    ranges = msg.ranges

    #print(angleIncrement)
    #print(angleMin)
    #print(angleMax)

    #print('range total: '+str(angleTotal))
    #print('total lasers: '+str(laserTotal))
    #print('total ranges: '+str(len(ranges)))

    i = 0
    a = 1
    distances = []

    for act in ranges:
        if act != float('inf'):
            #print(str(a)+': '+str(act))
            a = a + 1
            angle = i * angleIncrement
            x = math.sin(angle) * act
            y = (math.cos(angle) * act)*(-1)
            distances.append((x, y, act))

        
        i = i + 1
    print("--------")
    flag = False
    cones = []
    aux = []

    arrayConos = ConeArray()
    arrayConos.header.frame_id = "base_footprint"
    arrayConos.blue_cones = []
    arrayConos.yellow_cones = []
    arrayConos.orange_cones = []
    arrayConos.big_orange_cones = []
    arrayConos.unknown_color_cones = []

    if len(distances) == 1:
        cones.append(distances[0])

    elif len(distances) > 1:
        prev = distances[0]
        print(prev)
        for i in range(1, len(distances)):
            act = distances[i]
                
            x1 = act[0]
            y1 = act[1]
            rango1 = act[2]

            x0 = prev[0]
            y0 = prev[1]
            rango0 = prev[2]

            if (pow(x0-x1, 2) <= 0.002 and pow(y0-y1,2) <= 0.002 ): #Es el mismo cono, este y el anterior: distancia 0,15

                flag = True
                aux.append(prev)

            elif (flag): #Los anteriores eran el mismo cono, pero este no
                flag = False
                aux.append(prev)

                xList, yList, distList = zip(*aux)
                xMean = sum(xList)/len(xList)
                yMean = sum(yList)/len(yList)
                distMean = sum(distList)/len(distList)

                # cones.append((xMean, yMean))
                # newCone = transform_pose(xMean, yMean, "base_footprint", "map").pose.position
                newCone = Point()
                newCone.x = xMean
                newCone.y = yMean
                newCone.z = distMean
                arrayConos.orange_cones.append(newCone)

                #print(str(i)+": "+str(xMean)+", "+str(yMean))

                aux = []

                if len(distances) == i:
                    cones.append(act)
                    # newCone = transform_pose(act[0], act[1], "base_footprint", "map").pose.position
                    # arrayConos.orange_cones.append(newCone)
                    newCone = Point()
                    newCone.x = act[0]
                    newCone.y = act[1]
                    newCone.z = act[2]
                    arrayConos.orange_cones.append(newCone)
                    #print(i+": "+act[0]+", "+act[1])

            else:
                flag = False
                cones.append(prev)
                # newCone = transform_pose(prev[0], prev[1], "base_footprint", "map").pose.position
                # arrayConos.orange_cones.append(newCone)
                newCone = Point()
                newCone.x = prev[0]
                newCone.y = prev[1]
                newCone.z = prev[2]
                arrayConos.orange_cones.append(newCone)
                #print(str(i)+": "+str(prev[0])+", "+str(prev[1]))
                if len(distances) == i:
                    cones.append(act)
                    # newCone = transform_pose(act[0], act[1], "base_footprint", "map").pose.position
                    # arrayConos.orange_cones.append(newCone)
                    newCone = Point()
                    newCone.x = act[0]
                    newCone.y = act[1]
                    newCone.z = act[2]
                    arrayConos.orange_cones.append(newCone)
                    #print(str(i)+": "+str(act[0])+", "+str(act[1]))

            prev = act

    arrayConos.header.stamp = rospy.Time.now()
    conosPub.publish(arrayConos)
    # print(arrayConos)

    
    print('----------------------------------')


def transform_pose(x, y, from_frame, to_frame):

    input_pose = Pose()
    input_pose.position.x = x
    input_pose.position.y = y
    input_pose.position.z = 0.0
    input_pose.orientation.x = 0.0
    input_pose.orientation.y = 0.0
    input_pose.orientation.z = 0.0
    input_pose.orientation.w = 1
    #
    # # **Assuming /tf2 topic is being broadcasted
    tf_buffer = tf2_ros.Buffer()
    # listener = tf2_ros.TransformListener(tf_buffer)
    #
    pose_stamped = tf2_geometry_msgs.PoseStamped()
    pose_stamped.pose = input_pose
    pose_stamped.header.frame_id = from_frame
    pose_stamped.header.stamp = rospy.Time.now()
    #
    # try:
    #     # ** It is important to wait for the listener to start listening. Hence the rospy.Duration(1)
    #     output_pose_stamped = tf_buffer.transform(pose_stamped, to_frame, rospy.Duration(1))
    #     return output_pose_stamped.pose
    #
    # except (tf2_ros.LookupException, tf2_ros.ConnectivityException, tf2_ros.ExtrapolationException):
    #     raise

    transform = tf_buffer.lookup_transform(to_frame,
                                           # source frame:
                                           pose_stamped.header.frame_id,
                                           # get the tf at the time the pose was valid
                                           pose_stamped.header.stamp,
                                           # wait for at most 1 second for transform, otherwise throw
                                           rospy.Duration(1))

    pose_transformed = tf2_geometry_msgs.do_transform_pose(pose_stamped, transform)
    return pose_transformed

rospy.init_node('scan_values')
subLS = rospy.Subscriber('/scan', LaserScan, callbackLS)
conosPub = rospy.Publisher("/conoPercepcion", ConeArray, queue_size=10)
#subO = rospy.Subscriber('/ground_truth/odom', Odometry, callbackO)
rospy.spin()
