# Instructions for installing TARDEC's proprietary ROS packages to interact with the GVR-Bot
#### * See your instructor for access to these two packages: 'gvrbot' and 'gvrbot_controller'. 
#### * The 'gvrbot' package consists of custom ROS messages while 'gvrbot_controller' provides a GUI for Command and Telemetry.
The following steps should be performed on an Ubuntu 14.04 machine (can be virtual) with with 'ros-indigo-desktop-full' installed:
1. Open .bashrc and add the two lines to the end of your ~/.bashrc file (they may already exist if your laptop was imaged by EECS).
```
gksu gedit ~/.bashrc
source /opt/ros/indigo/setup.bash
source /home/user1/catkin_ws/devel/setup.bash
```

2. Install the following packages:
```
sudo apt-get install openssh-server
sudo apt-get install ros-indigo-teleop-twist-joy 
sudo apt-get install ros-indigo-joy
sudo apt-get install ros-indigo-qt-create
sudo apt-get install ros-indigo-qt-build
```

3. Copy 'gvrbot_controller' (gvrbot_controller was initially created by using the catkin_create_qt_pkg command) and 'gvrbot' folders (which was provided by your instructor) to this destination on your machine: `/home/user1/catkin_ws/src/`

4. Once you've moved 'gvrbot_controller' and 'gvrbot' to `/home/gvrbot/gvrbot-ros/src`, run the following:
```    
cd /home/user1/catkin_ws/ 
catkin_make
```
- NOTE: If 'gvrbot' package is NOT already built you will have to run 'source /home/user1/catkin_ws/devel/setup.bash' or 'source ~/.bashrc' after `catkin_make` command and then run 'catkin_make' again, because 'gvrbot_controller' depends on 'gvrbot'.

5. Edit the 'hosts' file to add IP address and host name for the default GVR-Bot. This will enable ROS controller to subscribe to topics published from GVR-Bot.
- `gksu gedit /etc/hosts`    
- Add the following line (if your GVR-Bot is different, this will need to match it): `192.168.0.101 gvrbotv1`

-------------------------------------------------------------------------------------------------------------------------------
# Instructions for controlling the robot through the GUI
To run the gvrbot controller software from the development machine, do the following: 
1. Connect to the robot computer over WiFi to SSID 'GVR-BOT-0xx' or using a CAT5 cable. See instructor for WiFi password.
2. Test connectivity to the robot. `ping 192.168.0.101`. Once you see a response, hit Ctrl+C to terminate pinging.
3. Attach XBOX 360 joystick and run `sudo jstest /dev/input/js1` to test the joystick's response.
- If data on the screen doesn't change, try js0. If the default joystick identifier is different than js1, you will need to modify the joystick path in the file /grvbot_controller/controller.launch 
4. Go to `/grvbot_controller/scripts` directory and run the controller script. 
```
cd ~/user1/catkin_ws/grvbot_controller/scripts
./controller_start.sh
```
- If it doesn't work, make sure 'controller_start.sh' is made an executable file. 
5. Once the GUI opens, enter your IP in the 'ROS IP' text field, then click Connect.
6. The controller should start receiving data from GVR-Bot. Move left joystick to send velocity/twist commands. Due to the way the 'teleop_twist_joy' node works, you have to hold down the 'A' button while you're moving the left joystick.
7. To control flipper and e-stop with joystick, use LB/RB and Start/Back respectively.
