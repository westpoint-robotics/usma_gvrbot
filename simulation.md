# Instructions for using the GVRbot in Gazebosim

## Dependencies:
- Run the below line of code to install dependencies. If more are needed please annotate on another line.  
`sudo apt-get install -y ros-melodic-twist-mux ros-melodic-robot-localization ros-melodic-interactive-marker-twist-server ros-melodic-realsense2-description ros-melodic-teleop-twist-joy ros-melodic-jackal-description ros-melodic-jackal-gazebo`


## To run the simulation with the Gazebo server running on a remote machine and the client in a VM:
### Setup the environmental variables
1. In both machines modify the file ~/.ignition/fuel/config.yaml  
`gedit ~/.ignition/fuel/config.yaml`  
- If this directory and file do not exist, start Gazebosim and shut it down. This will create the direcotries and files.  
  
- Change from: `url: https://api.ignitionfuel.org`  
- To:  
`url: https://api.ignitionrobotics.org`  

2. Set GAZEBO_MASTER_URI and GAZEBO_IP (Substitute in the machine IP Addresses)  
- Add an alias into .bashrc and run the alias in each terminal  
`echo "alias gzremote='export GAZEBO_MASTER_URI=http://192.168.17.24:11345;export GAZEBO_IP=192.168.17.25;export ROS_MASTER_URI=http://192.168.17.24:11311;export ROS_IP=192.168.17.25'" >> ~/.bashrc`  
- Or run them in the terminal  
`export GAZEBO_MASTER_URI=http://192.168.17.24:11345;export GAZEBO_IP=192.168.17.25`  
`export ROS_MASTER_URI=http://192.168.17.24:11311;export ROS_IP=192.168.17.25`  
- To speed up the process of shutting down Gazebosim you may want to add an alias to your .bashrc.   
`echo 'alias gzstop=""killall gzserver;killall gzclient""' >> ~/.bashrc`  
- Reload the .bashrc.  

### On the server machine:
1. Set the environmental variables in the terminal. For example use the alias:  
`gzremote`

2. Start the server with the launch file:
`roslaunch gvrbot gazebo_server.launch`

### On the client machine:
1. Set the environmental variables in the terminal. For example use the alias:  
`gzremote`

2. Start the server with the launch file:
`roslaunch gvrbot gazebo_client.launch`

## OLD STUFF MISC BELOW HERE
1. 
`GAZEBO_MASTER_URI=http:192.168.xxx.xxx:11345 gzserver --verbose`  
- or  
`GAZEBO_MASTER_URI=http://192.168.17.25:11345 gzserver --verbose /opt/ros/melodic/share/jackal_gazebo/worlds/jackal_race.world`  
3. On the client machine (The virtual machine):  
- Run the following lines to add environmental variables to .bashrc  
`echo 'export SVGA_VGPU10=0' >> ~/.bashrc`  
`echo 'export GAZEBO_MASTER_URI=http://192.168.17.25:11345' >> ~/.bashrc`  
- You may need to check to ensure these lines are added only once to ~/.bashrc.
- Either close and re-open any terminals for the changes to have effect or run this command in each open terminal:  
`source ~/.bashrc`  



5. Others
`GAZEBO_MASTER_URI=http://192.168.17.25:11345 gzserver --verbose /opt/ros/melodic/share/jackal_gazebo/worlds/jackal_race.world`

`echo 'export GAZEBO_MASTER_URI=http://192.168.17.24:11345' >> ~/.bashrc`




# OLD Instructions below here.
### Steps for getting an external Linux computer to communicate with the GVR-Bot using ROS.
1.  Dependencies:
    + teleop-twist-joy<br/> `sudo apt-get install ros-kinetic-teleop-twist-joy` 
    + hector-gazebo-plugins<br/> `sudo apt-get install ros-kinetic-hector-gazebo-plugins` 
    + gazebo (tested with gazebo 7)<br/> This is the version already installed with ros-desktop-full

2.  To start gazebo with gvrbot and xbox 360 controller:<br/>
    + `roslaunch gvrbot gvrbot_gazebo.launch`
