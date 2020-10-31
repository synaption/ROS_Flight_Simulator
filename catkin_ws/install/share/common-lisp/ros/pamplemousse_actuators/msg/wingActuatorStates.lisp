; Auto-generated. Do not edit!


(cl:in-package pamplemousse_actuators-msg)


;//! \htmlinclude wingActuatorStates.msg.html

(cl:defclass <wingActuatorStates> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (operating_mode
    :reader operating_mode
    :initarg :operating_mode
    :type cl:fixnum
    :initform 0)
   (statusword
    :reader statusword
    :initarg :statusword
    :type cl:fixnum
    :initform 0)
   (actual_position
    :reader actual_position
    :initarg :actual_position
    :type cl:integer
    :initform 0))
)

(cl:defclass wingActuatorStates (<wingActuatorStates>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wingActuatorStates>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wingActuatorStates)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pamplemousse_actuators-msg:<wingActuatorStates> is deprecated: use pamplemousse_actuators-msg:wingActuatorStates instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <wingActuatorStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_actuators-msg:header-val is deprecated.  Use pamplemousse_actuators-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'operating_mode-val :lambda-list '(m))
(cl:defmethod operating_mode-val ((m <wingActuatorStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_actuators-msg:operating_mode-val is deprecated.  Use pamplemousse_actuators-msg:operating_mode instead.")
  (operating_mode m))

(cl:ensure-generic-function 'statusword-val :lambda-list '(m))
(cl:defmethod statusword-val ((m <wingActuatorStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_actuators-msg:statusword-val is deprecated.  Use pamplemousse_actuators-msg:statusword instead.")
  (statusword m))

(cl:ensure-generic-function 'actual_position-val :lambda-list '(m))
(cl:defmethod actual_position-val ((m <wingActuatorStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_actuators-msg:actual_position-val is deprecated.  Use pamplemousse_actuators-msg:actual_position instead.")
  (actual_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wingActuatorStates>) ostream)
  "Serializes a message object of type '<wingActuatorStates>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'operating_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'statusword)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'statusword)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'actual_position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wingActuatorStates>) istream)
  "Deserializes a message object of type '<wingActuatorStates>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'operating_mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'statusword)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'statusword)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'actual_position) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wingActuatorStates>)))
  "Returns string type for a message object of type '<wingActuatorStates>"
  "pamplemousse_actuators/wingActuatorStates")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wingActuatorStates)))
  "Returns string type for a message object of type 'wingActuatorStates"
  "pamplemousse_actuators/wingActuatorStates")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wingActuatorStates>)))
  "Returns md5sum for a message object of type '<wingActuatorStates>"
  "f35dfd3ce2f32fc079e116f9467f3493")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wingActuatorStates)))
  "Returns md5sum for a message object of type 'wingActuatorStates"
  "f35dfd3ce2f32fc079e116f9467f3493")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wingActuatorStates>)))
  "Returns full string definition for message of type '<wingActuatorStates>"
  (cl:format cl:nil "# wingActuatorStates.msg~%# This is a message to hold the state messages for an individual Nanotec Actuator~%#~%# The state is exactly the Statusword (6041h)~%Header header~%~%# 6060h Modes of Operation~%# The desired operating mode is entered in this object.~%int8 operating_mode~%~%# 6041h Statusword~%# This object returns information about the status of the CiA 402 Power State Machine~%uint16 statusword~%~%# 6063h Position Actual Internal Value~%# Contains the current rotary encoder position in increments~%int32 actual_position ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wingActuatorStates)))
  "Returns full string definition for message of type 'wingActuatorStates"
  (cl:format cl:nil "# wingActuatorStates.msg~%# This is a message to hold the state messages for an individual Nanotec Actuator~%#~%# The state is exactly the Statusword (6041h)~%Header header~%~%# 6060h Modes of Operation~%# The desired operating mode is entered in this object.~%int8 operating_mode~%~%# 6041h Statusword~%# This object returns information about the status of the CiA 402 Power State Machine~%uint16 statusword~%~%# 6063h Position Actual Internal Value~%# Contains the current rotary encoder position in increments~%int32 actual_position ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wingActuatorStates>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wingActuatorStates>))
  "Converts a ROS message object to a list"
  (cl:list 'wingActuatorStates
    (cl:cons ':header (header msg))
    (cl:cons ':operating_mode (operating_mode msg))
    (cl:cons ':statusword (statusword msg))
    (cl:cons ':actual_position (actual_position msg))
))
