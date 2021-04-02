# usma_gvrbot
### 1. [Instructions for installing TARDEC proprietary ROS packages](https://github.com/westpoint-robotics/usma_gvrbot/blob/master/gvrbot-ros-setup.md)
### 2. [Instructions for connecting a Linux computer to the GVR-Bot](https://github.com/westpoint-robotics/usma_gvrbot/blob/master/linux_connect.md)
### 3. [Troubleshooting options](https://github.com/westpoint-robotics/usma_gvrbot/blob/master/troubleshooting.md)
### 4. [Gazebo simulation](https://github.com/westpoint-robotics/gvrbot/blob/master/simulation.md)

## Dependency list:
- `sudo apt-get install -y ros-melodic-velodyne ros-melodic-velodyne-description ros-melodic-velodyne-teleop-twist-joy ros-melodic-jackal-description ros-melodic-realsense2-camera ros-melodic-realsense2-description`

## E-Stop Check:

In the back of the GVR-Bot chassis is a red and black wire with a connector on it.  These are the leads for the e-stop.  The e-stop is likely for the motors, but the [GVR-Bot Status spreadsheet](https://usarmywestpoint.sharepoint.com/:x:/r/sites/eecs.robotics/_layouts/15/Doc.aspx?sourcedoc=%7B24973858-3618-47F7-9F5A-E001E592BCEC%7D&file=GVRBOT_Status.xlsx&action=default&mobileredirect=true&cid=097fef21-5d6f-41ce-9869-76de1258376f) is where you can look to confirm that.  Look for your GVR-Bot's ID, and check the "e-stop" entry.  These leads need to be shorted for the robot to work correctly; if there is not already a jump cable bridging the leads, you will need to install one.  There is not a ready supply, so this is something you will have to build yourself; if you are unable to find the correct connector housing, you can use two crimp pins of the appropriate gender and size, and a roughly two inch length 16 AWG solid core wire.  Form the wire into a loop, and put heatshrink around the loop and the pins to emulate the connector case.

#### OLD - Dependency list: TODO add these to package
- teleop_twist_joy
- ros-kinetic-astra-camera
- ros-kinetic-astra-launch

