;; Auto-generated. Do not edit!


(when (boundp 'pamplemousse_actuators::wingActuatorStates)
  (if (not (find-package "PAMPLEMOUSSE_ACTUATORS"))
    (make-package "PAMPLEMOUSSE_ACTUATORS"))
  (shadow 'wingActuatorStates (find-package "PAMPLEMOUSSE_ACTUATORS")))
(unless (find-package "PAMPLEMOUSSE_ACTUATORS::WINGACTUATORSTATES")
  (make-package "PAMPLEMOUSSE_ACTUATORS::WINGACTUATORSTATES"))

(in-package "ROS")
;;//! \htmlinclude wingActuatorStates.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pamplemousse_actuators::wingActuatorStates
  :super ros::object
  :slots (_header _operating_mode _statusword _actual_position ))

(defmethod pamplemousse_actuators::wingActuatorStates
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:operating_mode __operating_mode) 0)
    ((:statusword __statusword) 0)
    ((:actual_position __actual_position) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _operating_mode (round __operating_mode))
   (setq _statusword (round __statusword))
   (setq _actual_position (round __actual_position))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:operating_mode
   (&optional __operating_mode)
   (if __operating_mode (setq _operating_mode __operating_mode)) _operating_mode)
  (:statusword
   (&optional __statusword)
   (if __statusword (setq _statusword __statusword)) _statusword)
  (:actual_position
   (&optional __actual_position)
   (if __actual_position (setq _actual_position __actual_position)) _actual_position)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _operating_mode
    1
    ;; uint16 _statusword
    2
    ;; int32 _actual_position
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _operating_mode
       (write-byte _operating_mode s)
     ;; uint16 _statusword
       (write-word _statusword s)
     ;; int32 _actual_position
       (write-long _actual_position s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _operating_mode
     (setq _operating_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _operating_mode 127) (setq _operating_mode (- _operating_mode 256)))
   ;; uint16 _statusword
     (setq _statusword (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _actual_position
     (setq _actual_position (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pamplemousse_actuators::wingActuatorStates :md5sum-) "f35dfd3ce2f32fc079e116f9467f3493")
(setf (get pamplemousse_actuators::wingActuatorStates :datatype-) "pamplemousse_actuators/wingActuatorStates")
(setf (get pamplemousse_actuators::wingActuatorStates :definition-)
      "# wingActuatorStates.msg
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

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :pamplemousse_actuators/wingActuatorStates "f35dfd3ce2f32fc079e116f9467f3493")


