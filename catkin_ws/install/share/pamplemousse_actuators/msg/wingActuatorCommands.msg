# wingCommands.msg
# 
# This message holds commands for a single wing actuator.
Header header

# 6040h Controlword
# This object controls the CiA 402 Power State Machine
uint16 controlword

# 607Ah Target Position
# This object specifies the target position in user-defined units for the Profile
# Position and Cyclic Synchronous modes.
int32 target_position
