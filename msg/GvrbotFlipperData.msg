#Radians/Second
float64 angular_velocity
bool is_angular_velocity_valid

#Percentage
float64 effort
bool is_effort_valid

#Radians
float64 angle
bool is_angle_valid

bool is_home
bool is_is_home_valid

#RPM
uint16 motor_speed
bool is_motor_speed_valid

#Reverse = -1, Forward = 1, No Motion/Unknown = 0
int8 motor_direction
bool is_motor_direction_valid

uint16 motor_raw_encoder_count
bool is_motor_raw_encoder_count_valid

#Degrees Celsius
float64 motor_temperature
bool is_motor_temperature_valid

#Amps
float64 motor_current
bool is_motor_current_valid

uint8 status
bool is_status_valid

uint16 faults
bool is_faults_valid
