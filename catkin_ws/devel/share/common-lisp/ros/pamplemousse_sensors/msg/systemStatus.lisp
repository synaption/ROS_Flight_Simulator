; Auto-generated. Do not edit!


(cl:in-package pamplemousse_sensors-msg)


;//! \htmlinclude systemStatus.msg.html

(cl:defclass <systemStatus> (roslisp-msg-protocol:ros-message)
  ((system_failure
    :reader system_failure
    :initarg :system_failure
    :type cl:fixnum
    :initform 0)
   (accelerometer_sensor_failure
    :reader accelerometer_sensor_failure
    :initarg :accelerometer_sensor_failure
    :type cl:fixnum
    :initform 0)
   (gyroscope_sensor_failure
    :reader gyroscope_sensor_failure
    :initarg :gyroscope_sensor_failure
    :type cl:fixnum
    :initform 0)
   (magnetometer_sensor_failure
    :reader magnetometer_sensor_failure
    :initarg :magnetometer_sensor_failure
    :type cl:fixnum
    :initform 0)
   (pressure_sensor_failure
    :reader pressure_sensor_failure
    :initarg :pressure_sensor_failure
    :type cl:fixnum
    :initform 0)
   (gnss_failure
    :reader gnss_failure
    :initarg :gnss_failure
    :type cl:fixnum
    :initform 0)
   (accelerometer_over_range
    :reader accelerometer_over_range
    :initarg :accelerometer_over_range
    :type cl:fixnum
    :initform 0)
   (gyroscope_over_range
    :reader gyroscope_over_range
    :initarg :gyroscope_over_range
    :type cl:fixnum
    :initform 0)
   (magnetometer_over_range
    :reader magnetometer_over_range
    :initarg :magnetometer_over_range
    :type cl:fixnum
    :initform 0)
   (pressure_over_range
    :reader pressure_over_range
    :initarg :pressure_over_range
    :type cl:fixnum
    :initform 0)
   (minimum_temperature_alarm
    :reader minimum_temperature_alarm
    :initarg :minimum_temperature_alarm
    :type cl:fixnum
    :initform 0)
   (maximum_temperature_alarm
    :reader maximum_temperature_alarm
    :initarg :maximum_temperature_alarm
    :type cl:fixnum
    :initform 0)
   (low_voltage_alarm
    :reader low_voltage_alarm
    :initarg :low_voltage_alarm
    :type cl:fixnum
    :initform 0)
   (high_voltage_alarm
    :reader high_voltage_alarm
    :initarg :high_voltage_alarm
    :type cl:fixnum
    :initform 0)
   (gnss_antenna_disconnected
    :reader gnss_antenna_disconnected
    :initarg :gnss_antenna_disconnected
    :type cl:fixnum
    :initform 0)
   (serial_port_overflow_alarm
    :reader serial_port_overflow_alarm
    :initarg :serial_port_overflow_alarm
    :type cl:fixnum
    :initform 0))
)

(cl:defclass systemStatus (<systemStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <systemStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'systemStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pamplemousse_sensors-msg:<systemStatus> is deprecated: use pamplemousse_sensors-msg:systemStatus instead.")))

(cl:ensure-generic-function 'system_failure-val :lambda-list '(m))
(cl:defmethod system_failure-val ((m <systemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:system_failure-val is deprecated.  Use pamplemousse_sensors-msg:system_failure instead.")
  (system_failure m))

(cl:ensure-generic-function 'accelerometer_sensor_failure-val :lambda-list '(m))
(cl:defmethod accelerometer_sensor_failure-val ((m <systemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:accelerometer_sensor_failure-val is deprecated.  Use pamplemousse_sensors-msg:accelerometer_sensor_failure instead.")
  (accelerometer_sensor_failure m))

(cl:ensure-generic-function 'gyroscope_sensor_failure-val :lambda-list '(m))
(cl:defmethod gyroscope_sensor_failure-val ((m <systemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:gyroscope_sensor_failure-val is deprecated.  Use pamplemousse_sensors-msg:gyroscope_sensor_failure instead.")
  (gyroscope_sensor_failure m))

(cl:ensure-generic-function 'magnetometer_sensor_failure-val :lambda-list '(m))
(cl:defmethod magnetometer_sensor_failure-val ((m <systemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:magnetometer_sensor_failure-val is deprecated.  Use pamplemousse_sensors-msg:magnetometer_sensor_failure instead.")
  (magnetometer_sensor_failure m))

(cl:ensure-generic-function 'pressure_sensor_failure-val :lambda-list '(m))
(cl:defmethod pressure_sensor_failure-val ((m <systemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:pressure_sensor_failure-val is deprecated.  Use pamplemousse_sensors-msg:pressure_sensor_failure instead.")
  (pressure_sensor_failure m))

(cl:ensure-generic-function 'gnss_failure-val :lambda-list '(m))
(cl:defmethod gnss_failure-val ((m <systemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:gnss_failure-val is deprecated.  Use pamplemousse_sensors-msg:gnss_failure instead.")
  (gnss_failure m))

(cl:ensure-generic-function 'accelerometer_over_range-val :lambda-list '(m))
(cl:defmethod accelerometer_over_range-val ((m <systemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:accelerometer_over_range-val is deprecated.  Use pamplemousse_sensors-msg:accelerometer_over_range instead.")
  (accelerometer_over_range m))

(cl:ensure-generic-function 'gyroscope_over_range-val :lambda-list '(m))
(cl:defmethod gyroscope_over_range-val ((m <systemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:gyroscope_over_range-val is deprecated.  Use pamplemousse_sensors-msg:gyroscope_over_range instead.")
  (gyroscope_over_range m))

(cl:ensure-generic-function 'magnetometer_over_range-val :lambda-list '(m))
(cl:defmethod magnetometer_over_range-val ((m <systemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:magnetometer_over_range-val is deprecated.  Use pamplemousse_sensors-msg:magnetometer_over_range instead.")
  (magnetometer_over_range m))

(cl:ensure-generic-function 'pressure_over_range-val :lambda-list '(m))
(cl:defmethod pressure_over_range-val ((m <systemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:pressure_over_range-val is deprecated.  Use pamplemousse_sensors-msg:pressure_over_range instead.")
  (pressure_over_range m))

(cl:ensure-generic-function 'minimum_temperature_alarm-val :lambda-list '(m))
(cl:defmethod minimum_temperature_alarm-val ((m <systemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:minimum_temperature_alarm-val is deprecated.  Use pamplemousse_sensors-msg:minimum_temperature_alarm instead.")
  (minimum_temperature_alarm m))

(cl:ensure-generic-function 'maximum_temperature_alarm-val :lambda-list '(m))
(cl:defmethod maximum_temperature_alarm-val ((m <systemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:maximum_temperature_alarm-val is deprecated.  Use pamplemousse_sensors-msg:maximum_temperature_alarm instead.")
  (maximum_temperature_alarm m))

(cl:ensure-generic-function 'low_voltage_alarm-val :lambda-list '(m))
(cl:defmethod low_voltage_alarm-val ((m <systemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:low_voltage_alarm-val is deprecated.  Use pamplemousse_sensors-msg:low_voltage_alarm instead.")
  (low_voltage_alarm m))

(cl:ensure-generic-function 'high_voltage_alarm-val :lambda-list '(m))
(cl:defmethod high_voltage_alarm-val ((m <systemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:high_voltage_alarm-val is deprecated.  Use pamplemousse_sensors-msg:high_voltage_alarm instead.")
  (high_voltage_alarm m))

(cl:ensure-generic-function 'gnss_antenna_disconnected-val :lambda-list '(m))
(cl:defmethod gnss_antenna_disconnected-val ((m <systemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:gnss_antenna_disconnected-val is deprecated.  Use pamplemousse_sensors-msg:gnss_antenna_disconnected instead.")
  (gnss_antenna_disconnected m))

(cl:ensure-generic-function 'serial_port_overflow_alarm-val :lambda-list '(m))
(cl:defmethod serial_port_overflow_alarm-val ((m <systemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:serial_port_overflow_alarm-val is deprecated.  Use pamplemousse_sensors-msg:serial_port_overflow_alarm instead.")
  (serial_port_overflow_alarm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <systemStatus>) ostream)
  "Serializes a message object of type '<systemStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system_failure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accelerometer_sensor_failure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gyroscope_sensor_failure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'magnetometer_sensor_failure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pressure_sensor_failure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gnss_failure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accelerometer_over_range)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gyroscope_over_range)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'magnetometer_over_range)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pressure_over_range)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'minimum_temperature_alarm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maximum_temperature_alarm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'low_voltage_alarm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'high_voltage_alarm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gnss_antenna_disconnected)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'serial_port_overflow_alarm)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <systemStatus>) istream)
  "Deserializes a message object of type '<systemStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system_failure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accelerometer_sensor_failure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gyroscope_sensor_failure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'magnetometer_sensor_failure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pressure_sensor_failure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gnss_failure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accelerometer_over_range)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gyroscope_over_range)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'magnetometer_over_range)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pressure_over_range)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'minimum_temperature_alarm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maximum_temperature_alarm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'low_voltage_alarm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'high_voltage_alarm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gnss_antenna_disconnected)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'serial_port_overflow_alarm)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<systemStatus>)))
  "Returns string type for a message object of type '<systemStatus>"
  "pamplemousse_sensors/systemStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'systemStatus)))
  "Returns string type for a message object of type 'systemStatus"
  "pamplemousse_sensors/systemStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<systemStatus>)))
  "Returns md5sum for a message object of type '<systemStatus>"
  "ff88f32a9d7643d1bcd0f5f56a25b1ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'systemStatus)))
  "Returns md5sum for a message object of type 'systemStatus"
  "ff88f32a9d7643d1bcd0f5f56a25b1ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<systemStatus>)))
  "Returns full string definition for message of type '<systemStatus>"
  (cl:format cl:nil "# Defines the System Status subfields for the Spatial INS System State messages~%#~%uint8 system_failure~%uint8 accelerometer_sensor_failure~%uint8 gyroscope_sensor_failure~%uint8 magnetometer_sensor_failure~%uint8 pressure_sensor_failure~%uint8 gnss_failure~%uint8 accelerometer_over_range~%uint8 gyroscope_over_range~%uint8 magnetometer_over_range~%uint8 pressure_over_range~%uint8 minimum_temperature_alarm~%uint8 maximum_temperature_alarm~%uint8 low_voltage_alarm~%uint8 high_voltage_alarm~%uint8 gnss_antenna_disconnected~%uint8 serial_port_overflow_alarm~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'systemStatus)))
  "Returns full string definition for message of type 'systemStatus"
  (cl:format cl:nil "# Defines the System Status subfields for the Spatial INS System State messages~%#~%uint8 system_failure~%uint8 accelerometer_sensor_failure~%uint8 gyroscope_sensor_failure~%uint8 magnetometer_sensor_failure~%uint8 pressure_sensor_failure~%uint8 gnss_failure~%uint8 accelerometer_over_range~%uint8 gyroscope_over_range~%uint8 magnetometer_over_range~%uint8 pressure_over_range~%uint8 minimum_temperature_alarm~%uint8 maximum_temperature_alarm~%uint8 low_voltage_alarm~%uint8 high_voltage_alarm~%uint8 gnss_antenna_disconnected~%uint8 serial_port_overflow_alarm~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <systemStatus>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <systemStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'systemStatus
    (cl:cons ':system_failure (system_failure msg))
    (cl:cons ':accelerometer_sensor_failure (accelerometer_sensor_failure msg))
    (cl:cons ':gyroscope_sensor_failure (gyroscope_sensor_failure msg))
    (cl:cons ':magnetometer_sensor_failure (magnetometer_sensor_failure msg))
    (cl:cons ':pressure_sensor_failure (pressure_sensor_failure msg))
    (cl:cons ':gnss_failure (gnss_failure msg))
    (cl:cons ':accelerometer_over_range (accelerometer_over_range msg))
    (cl:cons ':gyroscope_over_range (gyroscope_over_range msg))
    (cl:cons ':magnetometer_over_range (magnetometer_over_range msg))
    (cl:cons ':pressure_over_range (pressure_over_range msg))
    (cl:cons ':minimum_temperature_alarm (minimum_temperature_alarm msg))
    (cl:cons ':maximum_temperature_alarm (maximum_temperature_alarm msg))
    (cl:cons ':low_voltage_alarm (low_voltage_alarm msg))
    (cl:cons ':high_voltage_alarm (high_voltage_alarm msg))
    (cl:cons ':gnss_antenna_disconnected (gnss_antenna_disconnected msg))
    (cl:cons ':serial_port_overflow_alarm (serial_port_overflow_alarm msg))
))
