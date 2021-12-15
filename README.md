### Automation of the UR5 pick, place, and sort in ROS-Gazebo (virtual Environment) with a virtual USB cam and vacuum grippers. 

This repository demonstrates UR5 pick, place, and sort in ROS and Gazebo. The UR5 uses a USB cam to detect a color object (e.g. red box) on a conveyor belt ([`ur5_vision.py`]), and it publish the position. Then, the UR5 plans its motion ([`ur5_mp.py`]) to follow the object. Once the end-effector is close to the object, it picks up the object with the vacuum grippers by turning on ([`ur5_gripper.py`]). Note that the vacuum gripper has only one source of suction. 

- Video demos:
  [`Simulation video`](https://www.youtube.com/watch?v=Yj5DEocFa48)

- Citation of this repository: 
  ```
    Nguyen, H., Yi, J., Vu, T., Wellington, M., Safder, M., Automation of the UR5 pick, place, and sort in ROS-Gazebo and real environment with a USB cam and vacuum grippers (Melodic Distribution), (2021), Github repository, https://github.com/hxn8439/computer_system_design_project_Virtual.git
  ```
#### How to use this repository
- This project was executed in Ubuntu 20.04 with ROS Melodic.
- make sure that you installed docker on Ubuntu 20.04 and create an image file using Melodic distribution. 
- Refer to dockerHub link https://hub.docker.com/repository/docker/hxn8439/ros_melodic for the exact copy of the docker image file. 
- be familiar with git commands. 

1. execute in unbuntu terminal CLI 
```
git clone  https://github.com/hxn8439/Ubuntu_18.04_Docker_Script
```


- Once that done, execute a script to create a container in order to build a catkin workspace for the ROS. This repository can be found here: https://github.com/hxn8439/Ubuntu_18.04_Docker_Script
- Refer to docker commands procedural map that is enclosed in the repository that accompany with the docker scripts. follow the flowchart to create a docker image and a container.  
- Make sure to delete a pre-installed folder name universal_robot in the src folder in the catkin_ws. 
- execute in the catkin workspace 
```
root@3id89cj5:~/catkin_ws# catkin clean
```
- "catkin clean" is to wipe and clean catkin workspace. make sure that when executing this command, it has to be at the root of the workspace folder e.g. /catkin_ws/ 


1st part-create docker image and container
execute git clone  https://github.com/hxn8439/Ubuntu_18.04_Docker_Script
create a docker image and container -refer to the docker flowchart for the following commands in that repository.

2nd part-create- access to the docker container and workspace then execute the following: 
- execute git clone https://github.com/hxn8439/computer_system_design_project.git 
- execute git clone https://github.com/hxn8439/universal_robot.git
- Also if you need to update the computer_system_design_project folder perform this task:
- execute git pull https://github.com/hxn8439/computer_system_design_project.git

3rd part- grant file access on python files in computer_system_design_project in master source folder. 
```
$ sudo chmod 777 name.py
```
- Build the code under directory `ur_ws/`,
  ```
  $ catkin clean
  $ catkin_make
  $ source devel/setup.bash  
  ```
- Run the code with ROS and Gazebo
  ```
  $ roslaunch ur5_notebook initialize.launch 
  ```
#### . References 
  ```
    Huang, L., Zhao, H., Implementation of UR5 pick and place in ROS-Gazebo with a USB cam and vacuum grippers, (2018), GitHub repository, https://github.com/lihuang3/ur5_ROS-Gazebo.git
  ```

__######## Attention: This repository is closed for the senior design project and will discontinue the development as of 12/13/2021. H. Nguyen 12/13/2021###########__
