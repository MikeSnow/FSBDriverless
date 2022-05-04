# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "gazebo_msgs;roscpp;nodelet;geometry_msgs;nav_msgs;eufs_msgs;ackermann_msgs;tf2_ros;tf".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lgazebo_state_ground_truth".split(';') if "-lgazebo_state_ground_truth" != "" else []
PROJECT_NAME = "eufs_gazebo_plugins"
PROJECT_SPACE_DIR = "/home/miki/catkin_ws/install"
PROJECT_VERSION = "1.0.0"
