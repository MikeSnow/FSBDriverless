# CMake generated Testfile for 
# Source directory: /home/driverless/sim/src/pointcloud_to_laserscan
# Build directory: /home/driverless/sim/build/pointcloud_to_laserscan
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_pointcloud_to_laserscan_roslint_package "/home/driverless/sim/build/pointcloud_to_laserscan/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/driverless/sim/build/pointcloud_to_laserscan/test_results/pointcloud_to_laserscan/roslint-pointcloud_to_laserscan.xml" "--working-dir" "/home/driverless/sim/build/pointcloud_to_laserscan" "--return-code" "/opt/ros/melodic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/driverless/sim/build/pointcloud_to_laserscan/test_results/pointcloud_to_laserscan/roslint-pointcloud_to_laserscan.xml make roslint_pointcloud_to_laserscan")
subdirs("gtest")
