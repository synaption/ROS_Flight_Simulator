;; Auto-generated. Do not edit!


(when (boundp 'pamplemousse_sensors::SpatialState)
  (if (not (find-package "PAMPLEMOUSSE_SENSORS"))
    (make-package "PAMPLEMOUSSE_SENSORS"))
  (shadow 'SpatialState (find-package "PAMPLEMOUSSE_SENSORS")))
(unless (find-package "PAMPLEMOUSSE_SENSORS::SPATIALSTATE")
  (make-package "PAMPLEMOUSSE_SENSORS::SPATIALSTATE"))

(in-package "ROS")
;;//! \htmlinclude SpatialState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pamplemousse_sensors::SpatialState
  :super ros::object
  :slots (_header _system_status _filter_status _unix_time_seconds _microseconds _latitude _longitude _height _velocity _body_acceleration _g_force _orientation _angular_velocity _standard_deviation ))

(defmethod pamplemousse_sensors::SpatialState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:system_status __system_status) (instance pamplemousse_sensors::systemStatus :init))
    ((:filter_status __filter_status) (instance pamplemousse_sensors::filterStatus :init))
    ((:unix_time_seconds __unix_time_seconds) 0)
    ((:microseconds __microseconds) 0)
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:height __height) 0.0)
    ((:velocity __velocity) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:body_acceleration __body_acceleration) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:g_force __g_force) 0.0)
    ((:orientation __orientation) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:angular_velocity __angular_velocity) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:standard_deviation __standard_deviation) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _system_status __system_status)
   (setq _filter_status __filter_status)
   (setq _unix_time_seconds (round __unix_time_seconds))
   (setq _microseconds (round __microseconds))
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _height (float __height))
   (setq _velocity __velocity)
   (setq _body_acceleration __body_acceleration)
   (setq _g_force (float __g_force))
   (setq _orientation __orientation)
   (setq _angular_velocity __angular_velocity)
   (setq _standard_deviation __standard_deviation)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:system_status
   (&rest __system_status)
   (if (keywordp (car __system_status))
       (send* _system_status __system_status)
     (progn
       (if __system_status (setq _system_status (car __system_status)))
       _system_status)))
  (:filter_status
   (&rest __filter_status)
   (if (keywordp (car __filter_status))
       (send* _filter_status __filter_status)
     (progn
       (if __filter_status (setq _filter_status (car __filter_status)))
       _filter_status)))
  (:unix_time_seconds
   (&optional __unix_time_seconds)
   (if __unix_time_seconds (setq _unix_time_seconds __unix_time_seconds)) _unix_time_seconds)
  (:microseconds
   (&optional __microseconds)
   (if __microseconds (setq _microseconds __microseconds)) _microseconds)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:body_acceleration
   (&optional __body_acceleration)
   (if __body_acceleration (setq _body_acceleration __body_acceleration)) _body_acceleration)
  (:g_force
   (&optional __g_force)
   (if __g_force (setq _g_force __g_force)) _g_force)
  (:orientation
   (&optional __orientation)
   (if __orientation (setq _orientation __orientation)) _orientation)
  (:angular_velocity
   (&optional __angular_velocity)
   (if __angular_velocity (setq _angular_velocity __angular_velocity)) _angular_velocity)
  (:standard_deviation
   (&optional __standard_deviation)
   (if __standard_deviation (setq _standard_deviation __standard_deviation)) _standard_deviation)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; pamplemousse_sensors/systemStatus _system_status
    (send _system_status :serialization-length)
    ;; pamplemousse_sensors/filterStatus _filter_status
    (send _filter_status :serialization-length)
    ;; uint32 _unix_time_seconds
    4
    ;; uint32 _microseconds
    4
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _height
    8
    ;; float32[3] _velocity
    (* 4    3)
    ;; float32[3] _body_acceleration
    (* 4    3)
    ;; float32 _g_force
    4
    ;; float32[3] _orientation
    (* 4    3)
    ;; float32[3] _angular_velocity
    (* 4    3)
    ;; float32[3] _standard_deviation
    (* 4    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; pamplemousse_sensors/systemStatus _system_status
       (send _system_status :serialize s)
     ;; pamplemousse_sensors/filterStatus _filter_status
       (send _filter_status :serialize s)
     ;; uint32 _unix_time_seconds
       (write-long _unix_time_seconds s)
     ;; uint32 _microseconds
       (write-long _microseconds s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32[3] _velocity
     (dotimes (i 3)
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _body_acceleration
     (dotimes (i 3)
       (sys::poke (elt _body_acceleration i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _g_force
       (sys::poke _g_force (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[3] _orientation
     (dotimes (i 3)
       (sys::poke (elt _orientation i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _angular_velocity
     (dotimes (i 3)
       (sys::poke (elt _angular_velocity i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _standard_deviation
     (dotimes (i 3)
       (sys::poke (elt _standard_deviation i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; pamplemousse_sensors/systemStatus _system_status
     (send _system_status :deserialize buf ptr-) (incf ptr- (send _system_status :serialization-length))
   ;; pamplemousse_sensors/filterStatus _filter_status
     (send _filter_status :deserialize buf ptr-) (incf ptr- (send _filter_status :serialization-length))
   ;; uint32 _unix_time_seconds
     (setq _unix_time_seconds (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _microseconds
     (setq _microseconds (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32[3] _velocity
   (dotimes (i (length _velocity))
     (setf (elt _velocity i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _body_acceleration
   (dotimes (i (length _body_acceleration))
     (setf (elt _body_acceleration i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _g_force
     (setq _g_force (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[3] _orientation
   (dotimes (i (length _orientation))
     (setf (elt _orientation i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _angular_velocity
   (dotimes (i (length _angular_velocity))
     (setf (elt _angular_velocity i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _standard_deviation
   (dotimes (i (length _standard_deviation))
     (setf (elt _standard_deviation i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get pamplemousse_sensors::SpatialState :md5sum-) "9da90427e4173bf5bfbba0285b9b9e2e")
(setf (get pamplemousse_sensors::SpatialState :datatype-) "pamplemousse_sensors/SpatialState")
(setf (get pamplemousse_sensors::SpatialState :definition-)
      "# SpatialState.msg
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

================================================================================
MSG: pamplemousse_sensors/systemStatus
# Defines the System Status subfields for the Spatial INS System State messages
#
uint8 system_failure
uint8 accelerometer_sensor_failure
uint8 gyroscope_sensor_failure
uint8 magnetometer_sensor_failure
uint8 pressure_sensor_failure
uint8 gnss_failure
uint8 accelerometer_over_range
uint8 gyroscope_over_range
uint8 magnetometer_over_range
uint8 pressure_over_range
uint8 minimum_temperature_alarm
uint8 maximum_temperature_alarm
uint8 low_voltage_alarm
uint8 high_voltage_alarm
uint8 gnss_antenna_disconnected
uint8 serial_port_overflow_alarm
================================================================================
MSG: pamplemousse_sensors/filterStatus
# Defines the Filter Status subfields for the Spatial INS System State messagesuint8 orientation_filter_initialised
#
uint8 ins_filter_initialised
uint8 heading_initialised
uint8 utc_time_initialised
uint8 gnss_fix_type
uint8 event1_flag
uint8 event2_flag
uint8 internal_gnss_enabled
uint8 magnetic_heading_enabled
uint8 velocity_heading_enabled
uint8 atmospheric_altitude_enabled
uint8 external_position_active
uint8 external_velocity_active
uint8 external_heading_active
")



(provide :pamplemousse_sensors/SpatialState "9da90427e4173bf5bfbba0285b9b9e2e")


