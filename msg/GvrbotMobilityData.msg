#Drive Velocity (linear.x) = Meters/Second, Turn Velocity (angular.z) = Radians/Second
geometry_msgs/Twist twist
bool is_twist_valid

#RPM
uint16 left_drive_motor_speed
bool is_left_drive_motor_speed_valid

#RPM
uint16 right_drive_motor_speed
bool is_right_drive_motor_speed_valid

#Reverse = -1, Forward = 1, No Motion/Unknown = 0
int8 left_drive_motor_direction
bool is_left_drive_motor_direction_valid

#Reverse = -1, Forward = 1, No Motion/Unknown = 0
int8 right_drive_motor_direction
bool is_right_drive_motor_direction_valid

uint16 left_drive_motor_raw_encoder_count
bool is_left_drive_motor_raw_encoder_count_valid

uint16 right_drive_motor_raw_encoder_count
bool is_right_drive_motor_raw_encoder_count_valid

#Degrees Celsius
float64 left_motor_temperature
bool is_left_motor_temperature_valid

#Degrees Celsius
float64 right_motor_temperature
bool is_right_motor_temperature_valid

#Amps
float64 left_motor_current
bool is_left_motor_current_valid

#Amps
float64 right_motor_current
bool is_right_motor_current_valid

uint8 status
bool is_status_valid

uint16 faults
bool is_faults_valid

#Meters
uint16 distance_travelled
bool is_distance_travelled_valid

#Meters/Second
float64 left_track_velocity
bool is_left_track_velocity_valid

#Meters/Second
float64 right_track_velocity
bool is_right_track_velocity_valid
