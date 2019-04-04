# Instructions for using the GVRbot in Gazebosim

### Steps for getting an external Linux computer to communicate with the GVR-Bot using ROS.
1.  Dependencies:
    + teleop-twist-joy<br/> `sudo apt-get install ros-kinetic-teleop-twist-joy` 
    + hector-gazebo-plugins<br/> `sudo apt-get install ros-kinetic-hector-gazebo-plugins` 
    + gazebo (tested with gazebo 7)<br/> This is the version already installed with ros-desktop-full

2.  To start gazebo with gvrbot and xbox 360 controller:<br/>
    + `roslaunch gvrbot gvrbot_gazebo.launch`
