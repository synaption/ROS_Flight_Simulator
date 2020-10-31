; Auto-generated. Do not edit!


(cl:in-package pamplemousse_actuators-msg)


;//! \htmlinclude wingActuatorCommands.msg.html

(cl:defclass <wingActuatorCommands> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (controlword
    :reader controlword
    :initarg :controlword
    :type cl:fixnum
    :initform 0)
   (target_position
    :reader target_position
    :initarg :target_position
    :type cl:integer
    :initform 0))
)

(cl:defclass wingActuatorCommands (<wingActuatorCommands>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wingActuatorCommands>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wingActuatorCommands)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pamplemousse_actuators-msg:<wingActuatorCommands> is deprecated: use pamplemousse_actuators-msg:wingActuatorCommands instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <wingActuatorCommands>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_actuators-msg:header-val is deprecated.  Use pamplemousse_actuators-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'controlword-val :lambda-list '(m))
(cl:defmethod controlword-val ((m <wingActuatorCommands>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_actuators-msg:controlword-val is deprecated.  Use pamplemousse_actuators-msg:controlword instead.")
  (controlword m))

(cl:ensure-generic-function 'target_position-val :lambda-list '(m))
(cl:defmethod target_position-val ((m <wingActuatorCommands>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_actuators-msg:target_position-val is deprecated.  Use pamplemousse_actuators-msg:target_position instead.")
  (target_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wingActuatorCommands>) ostream)
  "Serializes a message object of type '<wingActuatorCommands>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'controlword)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'controlword)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'target_position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wingActuatorCommands>) istream)
  "Deserializes a message object of type '<wingActuatorCommands>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'controlword)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'controlword)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_position) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wingActuatorCommands>)))
  "Returns string type for a message object of type '<wingActuatorCommands>"
  "pamplemousse_actuators/wingActuatorCommands")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wingActuatorCommands)))
  "Returns string type for a message object of type 'wingActuatorCommands"
  "pamplemousse_actuators/wingActuatorCommands")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wingActuatorCommands>)))
  "Returns md5sum for a message object of type '<wingActuatorCommands>"
  "b1d763f711c35795d466da4ed513c9a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wingActuatorCommands)))
  "Returns md5sum for a message object of type 'wingActuatorCommands"
  "b1d763f711c35795d466da4ed513c9a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wingActuatorCommands>)))
  "Returns full string definition for message of type '<wingActuatorCommands>"
  (cl:format cl:nil "# wingCommands.msg~%# ~%# This message holds commands for a single wing actuator.~%Header header~%~%# 6040h Controlword~%# This object controls the CiA 402 Power State Machine~%uint16 controlword~%~%# 607Ah Target Position~%# This object specifies the target position in user-defined units for the Profile~%# Position and Cyclic Synchronous modes.~%int32 target_position~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wingActuatorCommands)))
  "Returns full string definition for message of type 'wingActuatorCommands"
  (cl:format cl:nil "# wingCommands.msg~%# ~%# This message holds commands for a single wing actuator.~%Header header~%~%# 6040h Controlword~%# This object controls the CiA 402 Power State Machine~%uint16 controlword~%~%# 607Ah Target Position~%# This object specifies the target position in user-defined units for the Profile~%# Position and Cyclic Synchronous modes.~%int32 target_position~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wingActuatorCommands>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wingActuatorCommands>))
  "Converts a ROS message object to a list"
  (cl:list 'wingActuatorCommands
    (cl:cons ':header (header msg))
    (cl:cons ':controlword (controlword msg))
    (cl:cons ':target_position (target_position msg))
))
