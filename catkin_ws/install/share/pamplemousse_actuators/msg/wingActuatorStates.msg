# wingActuatorStates.msg
# This is a message to hold the state messages for an individual Nanotec Actuator
#
# The state is exactly the Statusword (6041h)
Header header

# 6060h Modes of Operation
# The desired operating mode is entered in this object.
int8 operating_mode

# 6041h Statusword
# This object returns information about the status of the CiA 402 Power State Machine
uint16 statusword

# 6063h Position Actual Internal Value
# Contains the current rotary encoder position in increments
int32 actual_position 
