;; Auto-generated. Do not edit!


(when (boundp 'pamplemousse_actuators::wingActuatorCommands)
  (if (not (find-package "PAMPLEMOUSSE_ACTUATORS"))
    (make-package "PAMPLEMOUSSE_ACTUATORS"))
  (shadow 'wingActuatorCommands (find-package "PAMPLEMOUSSE_ACTUATORS")))
(unless (find-package "PAMPLEMOUSSE_ACTUATORS::WINGACTUATORCOMMANDS")
  (make-package "PAMPLEMOUSSE_ACTUATORS::WINGACTUATORCOMMANDS"))

(in-package "ROS")
;;//! \htmlinclude wingActuatorCommands.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pamplemousse_actuators::wingActuatorCommands
  :super ros::object
  :slots (_header _controlword _target_position ))

(defmethod pamplemousse_actuators::wingActuatorCommands
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:controlword __controlword) 0)
    ((:target_position __target_position) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _controlword (round __controlword))
   (setq _target_position (round __target_position))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:controlword
   (&optional __controlword)
   (if __controlword (setq _controlword __controlword)) _controlword)
  (:target_position
   (&optional __target_position)
   (if __target_position (setq _target_position __target_position)) _target_position)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _controlword
    2
    ;; int32 _target_position
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _controlword
       (write-word _controlword s)
     ;; int32 _target_position
       (write-long _target_position s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _controlword
     (setq _controlword (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _target_position
     (setq _target_position (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pamplemousse_actuators::wingActuatorCommands :md5sum-) "b1d763f711c35795d466da4ed513c9a2")
(setf (get pamplemousse_actuators::wingActuatorCommands :datatype-) "pamplemousse_actuators/wingActuatorCommands")
(setf (get pamplemousse_actuators::wingActuatorCommands :definition-)
      "# wingCommands.msg
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



(provide :pamplemousse_actuators/wingActuatorCommands "b1d763f711c35795d466da4ed513c9a2")


