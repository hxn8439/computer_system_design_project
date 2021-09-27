# File written by Hamilton Nguyen
# reference from   Huang, L., Zhao, H., Implementation of UR5 pick and place in ROS-Gazebo with a USB cam and vacuum grippers, (2018), GitHub repository, https://github.com/lihuang3/ur5_ROS-Gazebo.git

# message type to describe the tracking information of the blocks
# to be published as a topic

float64 x  # x coordinate in the world
float64 y  # y coordinate in the world
float64 z  # z coordinate in the world
float64 error_x
float64 error_y
float64 error_z
bool flag1
bool flag2
bool flag3