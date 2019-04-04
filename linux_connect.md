# Instructions for connecting Linux computers to the GVR-Bot 
Istructions for connecting remote computers to the GVR-Bot

### Steps for getting an external Linux computer to communicate with the GVR-Bot using ROS.
1.  Turn on the GVR-Bot via the power button.
2.  Connect to the GVR-Bot's wireless network
    + After some time, the GVR-Bot's internal access point (AP) router will advertise its SSID (i.e., GVR-BOT-042). 
    + From your Linux computer, connect to this access point.
    + See your instructor for the password to connect to the GVR-Bot's network.
3.  Confirm connectivity to the GVR-Bot by pinging the GVR-Bot's internal computer:
    + `ping 192.168.0.101`
4.  Ensure GVR-Bot is configured as the ROS MASTER when networked with other computers.
    + See Turtlebot Networking tutorial as a guide for completing this task:  `http://wiki.ros.org/turtlebot/Tutorials/indigo/Network%20Configuration`
    + Establish an ssh connection to the GVR-Bot's computer:  `ssh gvrbot@192.168.0.101`
    + See instructor for the password for the user account on the GVR-Bot.
    + Once logged onto the GVR-Bot computer, check its bashrc file by typing the following in the command line:  `sudo nano ~/.bashrc` 
    + Add the two following lines at the bottom of the bashrc file if they aren't already present:
        + `export ROS_MASTER_URI=http://192.168.0.101:11311`
        + `export ROS_HOSTNAME=192.168.0.101`
    + If changes were made to the bashrc, exit nano and save changes by typing ctrl+x.
5.  Ensure the external Linux computer is configured to point to the ROS MASTER so that they can communication.
    + On your Linux computer, check its bashrc file:  `sudo nano ~/.bashrc`
    + Add the two following lines at the bottom of the bashrc file if they aren't already present:
        + `export ROS_MASTER_URI=http://192.168.0.101:11311`
        + `export ROS_HOSTNAME=IP_OF_PC` 
            + where IP_OF_PC is the IP address of your Linux computer.  This is the IP address issued to the computer via DHCP by the GVR-Bot's router.  Check by your computer's IP by typing `ifconfig` in the command line. (i.e. export ROS_HOSTNAME=192.168.0.170).
    + If changes were made to the bashrc, exit nano and save changes by typing ctrl+x, and close any open terminals and re-open them to apply the updated .bashrc file. Alternatively, in any open terminal you can use the command `source ~/.bashrc` to apply the new settings.
6.  Test whether the computers are networked and able to pass ROS messages.
    + From your Linux computer, type `rostopic list`.  You should see a listing of topics being published by the GVR-Bot.
    + Test whether your Linux computer can send ROS messages to the GVR-Bot
        + Publish a command velocity message to move the tracks by typing:  `rostopic pub -r 10 /cmd_vel geometry_msgs/Twist  '{linear:  {x: 0.1, y: 0.0, z: 0.0}, angular: {x: 0.0,y: 0.0,z: 0.0}}'`\
        + Stop publishing this command to stop the tracks by pressing cltr+c in the same terminal window.
    + If the GVRbot drove forward then at this point your external Linux computer is configured to control the robot using ROS.
7.  Test Xbox 360 joystick control by plugging an Xbox joystick into the external Linux computer and run the command:
    + `roslaunch gvrbot xbox360_teleop.launch`
    + The deadman switch is the left bumper and the drive stick is the left joystick.
