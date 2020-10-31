; Auto-generated. Do not edit!


(cl:in-package pamplemousse_sensors-msg)


;//! \htmlinclude SpatialState.msg.html

(cl:defclass <SpatialState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (system_status
    :reader system_status
    :initarg :system_status
    :type pamplemousse_sensors-msg:systemStatus
    :initform (cl:make-instance 'pamplemousse_sensors-msg:systemStatus))
   (filter_status
    :reader filter_status
    :initarg :filter_status
    :type pamplemousse_sensors-msg:filterStatus
    :initform (cl:make-instance 'pamplemousse_sensors-msg:filterStatus))
   (unix_time_seconds
    :reader unix_time_seconds
    :initarg :unix_time_seconds
    :type cl:integer
    :initform 0)
   (microseconds
    :reader microseconds
    :initarg :microseconds
    :type cl:integer
    :initform 0)
   (latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (body_acceleration
    :reader body_acceleration
    :initarg :body_acceleration
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (g_force
    :reader g_force
    :initarg :g_force
    :type cl:float
    :initform 0.0)
   (orientation
    :reader orientation
    :initarg :orientation
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (standard_deviation
    :reader standard_deviation
    :initarg :standard_deviation
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SpatialState (<SpatialState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpatialState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpatialState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pamplemousse_sensors-msg:<SpatialState> is deprecated: use pamplemousse_sensors-msg:SpatialState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SpatialState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:header-val is deprecated.  Use pamplemousse_sensors-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'system_status-val :lambda-list '(m))
(cl:defmethod system_status-val ((m <SpatialState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:system_status-val is deprecated.  Use pamplemousse_sensors-msg:system_status instead.")
  (system_status m))

(cl:ensure-generic-function 'filter_status-val :lambda-list '(m))
(cl:defmethod filter_status-val ((m <SpatialState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:filter_status-val is deprecated.  Use pamplemousse_sensors-msg:filter_status instead.")
  (filter_status m))

(cl:ensure-generic-function 'unix_time_seconds-val :lambda-list '(m))
(cl:defmethod unix_time_seconds-val ((m <SpatialState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:unix_time_seconds-val is deprecated.  Use pamplemousse_sensors-msg:unix_time_seconds instead.")
  (unix_time_seconds m))

(cl:ensure-generic-function 'microseconds-val :lambda-list '(m))
(cl:defmethod microseconds-val ((m <SpatialState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:microseconds-val is deprecated.  Use pamplemousse_sensors-msg:microseconds instead.")
  (microseconds m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <SpatialState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:latitude-val is deprecated.  Use pamplemousse_sensors-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <SpatialState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:longitude-val is deprecated.  Use pamplemousse_sensors-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <SpatialState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:height-val is deprecated.  Use pamplemousse_sensors-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <SpatialState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:velocity-val is deprecated.  Use pamplemousse_sensors-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'body_acceleration-val :lambda-list '(m))
(cl:defmethod body_acceleration-val ((m <SpatialState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:body_acceleration-val is deprecated.  Use pamplemousse_sensors-msg:body_acceleration instead.")
  (body_acceleration m))

(cl:ensure-generic-function 'g_force-val :lambda-list '(m))
(cl:defmethod g_force-val ((m <SpatialState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:g_force-val is deprecated.  Use pamplemousse_sensors-msg:g_force instead.")
  (g_force m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <SpatialState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:orientation-val is deprecated.  Use pamplemousse_sensors-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <SpatialState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:angular_velocity-val is deprecated.  Use pamplemousse_sensors-msg:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'standard_deviation-val :lambda-list '(m))
(cl:defmethod standard_deviation-val ((m <SpatialState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:standard_deviation-val is deprecated.  Use pamplemousse_sensors-msg:standard_deviation instead.")
  (standard_deviation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpatialState>) ostream)
  "Serializes a message object of type '<SpatialState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'system_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filter_status) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'unix_time_seconds)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'unix_time_seconds)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'unix_time_seconds)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'unix_time_seconds)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'microseconds)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'microseconds)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'microseconds)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'microseconds)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'velocity))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'body_acceleration))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'g_force))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'orientation))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'angular_velocity))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'standard_deviation))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpatialState>) istream)
  "Deserializes a message object of type '<SpatialState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'system_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filter_status) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'unix_time_seconds)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'unix_time_seconds)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'unix_time_seconds)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'unix_time_seconds)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'microseconds)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'microseconds)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'microseconds)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'microseconds)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-double-float-bits bits)))
  (cl:setf (cl:slot-value msg 'velocity) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'velocity)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'body_acceleration) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'body_acceleration)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'g_force) (roslisp-utils:decode-single-float-bits bits)))
  (cl:setf (cl:slot-value msg 'orientation) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'orientation)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'angular_velocity) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'angular_velocity)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'standard_deviation) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'standard_deviation)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpatialState>)))
  "Returns string type for a message object of type '<SpatialState>"
  "pamplemousse_sensors/SpatialState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpatialState)))
  "Returns string type for a message object of type 'SpatialState"
  "pamplemousse_sensors/SpatialState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpatialState>)))
  "Returns md5sum for a message object of type '<SpatialState>"
  "9da90427e4173bf5bfbba0285b9b9e2e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpatialState)))
  "Returns md5sum for a message object of type 'SpatialState"
  "9da90427e4173bf5bfbba0285b9b9e2e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpatialState>)))
  "Returns full string definition for message of type '<SpatialState>"
  (cl:format cl:nil "# SpatialState.msg~%# This is a message to hold the System State Packet from the Advanced Navigation Spatial INS~%#~%# System State Packet~%# Packet ID: 20~%# Length: 100 bytes~%#~%Header header~%~%systemStatus system_status~%filterStatus filter_status~%uint32 unix_time_seconds~%uint32 microseconds~%float64 latitude                # [rad]~%float64 longitude               # [rad]~%float64 height                  # [m]~%float32[3] velocity             # [m/s]~%float32[3] body_acceleration    # [m/s/s]~%float32 g_force                 # [g]~%float32[3] orientation          # [rad]~%float32[3] angular_velocity     # [rad/s]~%float32[3] standard_deviation   # [m]~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pamplemousse_sensors/systemStatus~%# Defines the System Status subfields for the Spatial INS System State messages~%#~%uint8 system_failure~%uint8 accelerometer_sensor_failure~%uint8 gyroscope_sensor_failure~%uint8 magnetometer_sensor_failure~%uint8 pressure_sensor_failure~%uint8 gnss_failure~%uint8 accelerometer_over_range~%uint8 gyroscope_over_range~%uint8 magnetometer_over_range~%uint8 pressure_over_range~%uint8 minimum_temperature_alarm~%uint8 maximum_temperature_alarm~%uint8 low_voltage_alarm~%uint8 high_voltage_alarm~%uint8 gnss_antenna_disconnected~%uint8 serial_port_overflow_alarm~%================================================================================~%MSG: pamplemousse_sensors/filterStatus~%# Defines the Filter Status subfields for the Spatial INS System State messagesuint8 orientation_filter_initialised~%#~%uint8 ins_filter_initialised~%uint8 heading_initialised~%uint8 utc_time_initialised~%uint8 gnss_fix_type~%uint8 event1_flag~%uint8 event2_flag~%uint8 internal_gnss_enabled~%uint8 magnetic_heading_enabled~%uint8 velocity_heading_enabled~%uint8 atmospheric_altitude_enabled~%uint8 external_position_active~%uint8 external_velocity_active~%uint8 external_heading_active~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpatialState)))
  "Returns full string definition for message of type 'SpatialState"
  (cl:format cl:nil "# SpatialState.msg~%# This is a message to hold the System State Packet from the Advanced Navigation Spatial INS~%#~%# System State Packet~%# Packet ID: 20~%# Length: 100 bytes~%#~%Header header~%~%systemStatus system_status~%filterStatus filter_status~%uint32 unix_time_seconds~%uint32 microseconds~%float64 latitude                # [rad]~%float64 longitude               # [rad]~%float64 height                  # [m]~%float32[3] velocity             # [m/s]~%float32[3] body_acceleration    # [m/s/s]~%float32 g_force                 # [g]~%float32[3] orientation          # [rad]~%float32[3] angular_velocity     # [rad/s]~%float32[3] standard_deviation   # [m]~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pamplemousse_sensors/systemStatus~%# Defines the System Status subfields for the Spatial INS System State messages~%#~%uint8 system_failure~%uint8 accelerometer_sensor_failure~%uint8 gyroscope_sensor_failure~%uint8 magnetometer_sensor_failure~%uint8 pressure_sensor_failure~%uint8 gnss_failure~%uint8 accelerometer_over_range~%uint8 gyroscope_over_range~%uint8 magnetometer_over_range~%uint8 pressure_over_range~%uint8 minimum_temperature_alarm~%uint8 maximum_temperature_alarm~%uint8 low_voltage_alarm~%uint8 high_voltage_alarm~%uint8 gnss_antenna_disconnected~%uint8 serial_port_overflow_alarm~%================================================================================~%MSG: pamplemousse_sensors/filterStatus~%# Defines the Filter Status subfields for the Spatial INS System State messagesuint8 orientation_filter_initialised~%#~%uint8 ins_filter_initialised~%uint8 heading_initialised~%uint8 utc_time_initialised~%uint8 gnss_fix_type~%uint8 event1_flag~%uint8 event2_flag~%uint8 internal_gnss_enabled~%uint8 magnetic_heading_enabled~%uint8 velocity_heading_enabled~%uint8 atmospheric_altitude_enabled~%uint8 external_position_active~%uint8 external_velocity_active~%uint8 external_heading_active~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpatialState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'system_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filter_status))
     4
     4
     8
     8
     8
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'velocity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'body_acceleration) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'orientation) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'angular_velocity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'standard_deviation) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpatialState>))
  "Converts a ROS message object to a list"
  (cl:list 'SpatialState
    (cl:cons ':header (header msg))
    (cl:cons ':system_status (system_status msg))
    (cl:cons ':filter_status (filter_status msg))
    (cl:cons ':unix_time_seconds (unix_time_seconds msg))
    (cl:cons ':microseconds (microseconds msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':height (height msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':body_acceleration (body_acceleration msg))
    (cl:cons ':g_force (g_force msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
    (cl:cons ':standard_deviation (standard_deviation msg))
))
