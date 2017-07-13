# usma_gvrbot
ROS Packages to control the GVR-Bot
***************************************************************************
### Install instructions
*These steps should be performed on an Ubuntu 14.04 machine with ROS-Indigo-Full-Desktop installed*
#### Setup GVR-Bot ROS Environment for GVR-Bot
1. Open bashrc - `gksu gedit ~/.bashrc`
2. Add these two lines to the end of your ~/.bashrc file (they may already exist if your laptop was imaged by EECS)
- `source /opt/ros/indigo/setup.bash`
- `source /home/user1/catkin_ws/devel/setup.bash`
3. Install the following packages
- `sudo apt-get install openssh-server`
- `sudo apt-get install ros-indigo-teleop-twist-joy`
- `sudo apt-get install ros-indigo-joy`
- `sudo apt-get install ros-indigo-qt-create`
- `sudo apt-get install ros-indigo-qt-build`
4. Download the "gvrbot_controller" (gvrbot_controller was initially created by using the catkin_create_qt_pkg command) and "gvrbot" directories from this repository and move it to this destination on your machine: `/home/user1/catkin_ws/src/`
5. Once you've moved "gvrbot_controller" and "gvrbot" to `/home/user1/catkin_ws/src`, run the following:
- `cd /home/user1/catkin_ws/ `
- `catkin_make`
- *NOTE: If gvrbot package is NOT already built you will have to run 'source /home/user1/catkin_ws/devel/setup.bash' or 'source ~/.bashrc' after 'catkin_make' command and then run 'catkin_make' again, because gvrbot_controller depends on gvrbot package*
6. Edit the 'hosts' file to add IP address and host name for the default GVR-Bot. This will enable ROS controller to subscribe to topics published from GVR-Bot.
- `gksu gedit /etc/hosts`    
- Add the following line (if your GVR-Bot is different, this will need to match it): `192.168.0.101 gvrbotv1`

#### Controlling the GVR-Bot using "gvrbot-controller" software
1. Connect to the robot computer over WiFi to SSID 'GVR-BOT-0xx' or using a CAT5 cable. Check with OIC for WiFi password.
2. After connecting, check to make sure you are able to ping the robot. 
- `ping 192.168.0.101`
- Once you see a positive response, press Ctrl + C to terminate pinging.
3. Attach an XBox 360 joystick and test it using `sudo jstest /dev/input/js1`
- If nothing on the screen changes while you operate the joystick, try `js0`. 
- If the default joystick identifier is different that js1, you will need to change the joystick path in the file `/grvbot_controller/controller.launch`
4. From the gvrbot-controller directory, run the script which opens the Controller GUI.
- `cd /home/user1/catkin_ws/grvbot_controller/scripts`
- `./controller_start.sh`
- If it doesn't work, check to ensure that the controller_start.sh script is made an executable file. 
5. Once thr GUI opens, enter your IP in the 'Ros IP' text field, then select Connect. The controller should start receiving data from GVR-Bot
6. Move left joystick to send move commands to the tracks. You have to hold down the A button while you're moving the left joystick.
7. You should also be able to control the flippers(if present) and e-stop with the joystick (LB/RB, and Start/Back respectively).
