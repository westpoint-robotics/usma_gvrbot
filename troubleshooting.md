### Troubleshooting options if you notice either the Red or Green LED flashing on the robot.  

#### Using GDTv1.4 or later:
1. On a windows machine, open GDTv1.4
2. Make sure you are connected to the robot computer, either wirelessly or wired.
3. Reset all 3 microcontroller boards by clicking on the three respective 'Application Mode' buttons.
4. Power cycle the robot. 

#### Using command line if GDT doesn't respond: (Steps to reset the 3 microcontrollers)
1. First SSH into gvrbot using IP address 192.168.0.101. username is 'gvrbot' and password is 'modern'
2. Then depending on the board you wish to reset, execute the resepective commands.
- To restore Power Management Micro from bootloader mode to application mode: 
  * `./scripts/stop_gvrbot_ros.sh`
  * After you see 'gvrbot stop/waiting',
  * `sudo /opt/gvrbot-dfu-programmer/bin/dfu-programmer gvrbot-pm start`
  * This will cause the robot to power cycle. On bootup, the power micro should be in application mode indicated by a steady green light.

- To restore Mobility Micro from bootloader mode to application mode:
  * `./scripts/stop_gvrbot_ros.sh`
  * After you see 'gvrbot stop/waiting', 
  * `sudo /opt/gvrbot-dfu-programmer/bin/dfu-programmer gvrbot-mobility start`
  * This will cause the flashing red LED to turn off. You need to power cycle the robot for changes to take effect. 
  * On bootup, both the red and green LEDs should glow steadily. 
  * If the red light still flashes, the Flipper micro may be in bootloader mode and needs to be reset.

- To restore Flipper Micro from bootloader mode to application mode:
  * `./scripts/stop_gvrbot_ros.sh`
  * After you see 'gvrbot stop/waiting', 
  * `sudo /opt/gvrbot-dfu-programmer/bin/dfu-programmer gvrbot-flipper start`
  * This will cause the flashing red LED to turn off. You need to power cycle the robot for changes to take effect. 
  * On bootup, both the red and green LEDs should glow steadily.

3. After resetting the microcontrollers, run controller_start.sh from /home/user1/catkin_ws/src/gvrbot_controller/scripts and verify that communication has been established with the three boards.
