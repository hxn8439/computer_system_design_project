# File written by Hamilton Nguyen
# reference from   Huang, L., Zhao, H., Implementation of UR5 pick and place in ROS-Gazebo with a USB cam and vacuum grippers, (2018), GitHub repository, https://github.com/lihuang3/ur5_ROS-Gazebo.git

# message type to describe 3-D position of the cylinder blocks
# variable length array, length decided by topic /current_cylinder_blocks
# to be published as a topic

float64[] x  # x coordinate in the world
float64[] y  # y coordinate in the world
float64[] z  # z coordinate in the world
