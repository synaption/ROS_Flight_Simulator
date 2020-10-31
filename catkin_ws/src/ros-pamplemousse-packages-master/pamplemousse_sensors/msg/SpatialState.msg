# SpatialState.msg
# This is a message to hold the System State Packet from the Advanced Navigation Spatial INS
#
# System State Packet
# Packet ID: 20
# Length: 100 bytes
#
Header header

systemStatus system_status
filterStatus filter_status
uint32 unix_time_seconds
uint32 microseconds
float64 latitude                # [rad]
float64 longitude               # [rad]
float64 height                  # [m]
float32[3] velocity             # [m/s]
float32[3] body_acceleration    # [m/s/s]
float32 g_force                 # [g]
float32[3] orientation          # [rad]
float32[3] angular_velocity     # [rad/s]
float32[3] standard_deviation   # [m]