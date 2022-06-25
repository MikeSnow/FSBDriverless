# FSB Workspace
Este es el workspace de desarrollo driverless de Formula Student Bizkaia.

## Estructura del workspace:
´´´
~/fsbdriverless
  |__ environment.sh
  |__ update_dependencies.sh
  |__ src
      |__ 0_fsd_common
      |   |__ fsd_common_meta
      |   |   |__ missions
      |   |__ fsd_common_msgs
      |__ 1_perception
      |   |__ perception_meta
      |   |__ lidar_cone_detection
      |   |   |__ package.xml
      |   |   |__ CMakeLists.txt
      |   |   |__ ...
      |
      |__ 2_estimation
      |   |__ estimation_meta
      |   |__ velocity_estimator
      |
      |__ 3_control
´´´

## Source del workspace
Suponiendo que el el proyecto está clonado en $HOME:  
´´´
echo "source ~/FSBDriverless/workspace/devel/setup.bash">> ~/.bashrc
´´´
