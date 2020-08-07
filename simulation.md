# Instructions for using the GVRbot in Gazebosim

## Dependencies:
- Run the below line of code to install dependencies. If more are needed please annotate on another line.  
`sudo apt-get install -y ros-melodic-twist-mux ros-melodic-robot-localization ros-melodic-interactive-marker-twist-server ros-melodic-realsense2-description ros-melodic-teleop-twist-joy ros-melodic-jackal-description`


## To run the simulation with the Gazebo server running on a remote machine and the client in a VM:
1. In both machines modify the file ~/.ignition/fuel/config.yaml  
`gedit ~/.ignition/fuel/config.yaml`  
- If this directory and file do not exist, start Gazebosim and shut it down. This will create the direcotries and files.  
  
- Change from: `url: https://api.ignitionfuel.org`  
- To:  
`url: https://api.ignitionrobotics.org`  

2. On the server machine start the server with (Replace 192.168.xxx.xxx with the IP address of the server):  
`GAZEBO_MASTEER_URI=http:192.168.xxx.xxx:11345 gzserver --verbose`  
- or  
`GAZEBO_MASTER_URI=http://192.168.17.25:11345 gzserver --verbose /opt/ros/melodic/share/jackal_gazebo/worlds/jackal_race.world`  
3. On the client machine (The virtual machine):  
- Run the following lines to add environmental variables to .bashrc  
`echo 'export SVGA_VGPU10=0' >> ~/.bashrc`  
`echo 'export GAZEBO_MASTER_URI=http://192.168.17.25:11345' >> ~/.bashrc`  
- You may need to check to ensure these lines are added only once to ~/.bashrc.
- Either close and re-open any terminals for the changes to have effect or run this command in each open terminal:  
`source ~/.bashrc`  

4. To speed up the process of shutting down Gazebosim you may want to add an alias to your .bashrc. To do so run the below code and reload the .bashrc.
`echo 'killall gzserver;killall gzclient' >> ~/.bashrc`  

`GAZEBO_MASTER_URI=http://192.168.17.25:11345 gzserver --verbose /opt/ros/melodic/share/jackal_gazebo/worlds/jackal_race.world`






# OLD Instructions below here.
### Steps for getting an external Linux computer to communicate with the GVR-Bot using ROS.
1.  Dependencies:
    + teleop-twist-joy<br/> `sudo apt-get install ros-kinetic-teleop-twist-joy` 
    + hector-gazebo-plugins<br/> `sudo apt-get install ros-kinetic-hector-gazebo-plugins` 
    + gazebo (tested with gazebo 7)<br/> This is the version already installed with ros-desktop-full

2.  To start gazebo with gvrbot and xbox 360 controller:<br/>
    + `roslaunch gvrbot gvrbot_gazebo.launch`
