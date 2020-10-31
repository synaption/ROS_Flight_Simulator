;; Auto-generated. Do not edit!


(when (boundp 'pamplemousse_sensors::systemStatus)
  (if (not (find-package "PAMPLEMOUSSE_SENSORS"))
    (make-package "PAMPLEMOUSSE_SENSORS"))
  (shadow 'systemStatus (find-package "PAMPLEMOUSSE_SENSORS")))
(unless (find-package "PAMPLEMOUSSE_SENSORS::SYSTEMSTATUS")
  (make-package "PAMPLEMOUSSE_SENSORS::SYSTEMSTATUS"))

(in-package "ROS")
;;//! \htmlinclude systemStatus.msg.html


(defclass pamplemousse_sensors::systemStatus
  :super ros::object
  :slots (_system_failure _accelerometer_sensor_failure _gyroscope_sensor_failure _magnetometer_sensor_failure _pressure_sensor_failure _gnss_failure _accelerometer_over_range _gyroscope_over_range _magnetometer_over_range _pressure_over_range _minimum_temperature_alarm _maximum_temperature_alarm _low_voltage_alarm _high_voltage_alarm _gnss_antenna_disconnected _serial_port_overflow_alarm ))

(defmethod pamplemousse_sensors::systemStatus
  (:init
   (&key
    ((:system_failure __system_failure) 0)
    ((:accelerometer_sensor_failure __accelerometer_sensor_failure) 0)
    ((:gyroscope_sensor_failure __gyroscope_sensor_failure) 0)
    ((:magnetometer_sensor_failure __magnetometer_sensor_failure) 0)
    ((:pressure_sensor_failure __pressure_sensor_failure) 0)
    ((:gnss_failure __gnss_failure) 0)
    ((:accelerometer_over_range __accelerometer_over_range) 0)
    ((:gyroscope_over_range __gyroscope_over_range) 0)
    ((:magnetometer_over_range __magnetometer_over_range) 0)
    ((:pressure_over_range __pressure_over_range) 0)
    ((:minimum_temperature_alarm __minimum_temperature_alarm) 0)
    ((:maximum_temperature_alarm __maximum_temperature_alarm) 0)
    ((:low_voltage_alarm __low_voltage_alarm) 0)
    ((:high_voltage_alarm __high_voltage_alarm) 0)
    ((:gnss_antenna_disconnected __gnss_antenna_disconnected) 0)
    ((:serial_port_overflow_alarm __serial_port_overflow_alarm) 0)
    )
   (send-super :init)
   (setq _system_failure (round __system_failure))
   (setq _accelerometer_sensor_failure (round __accelerometer_sensor_failure))
   (setq _gyroscope_sensor_failure (round __gyroscope_sensor_failure))
   (setq _magnetometer_sensor_failure (round __magnetometer_sensor_failure))
   (setq _pressure_sensor_failure (round __pressure_sensor_failure))
   (setq _gnss_failure (round __gnss_failure))
   (setq _accelerometer_over_range (round __accelerometer_over_range))
   (setq _gyroscope_over_range (round __gyroscope_over_range))
   (setq _magnetometer_over_range (round __magnetometer_over_range))
   (setq _pressure_over_range (round __pressure_over_range))
   (setq _minimum_temperature_alarm (round __minimum_temperature_alarm))
   (setq _maximum_temperature_alarm (round __maximum_temperature_alarm))
   (setq _low_voltage_alarm (round __low_voltage_alarm))
   (setq _high_voltage_alarm (round __high_voltage_alarm))
   (setq _gnss_antenna_disconnected (round __gnss_antenna_disconnected))
   (setq _serial_port_overflow_alarm (round __serial_port_overflow_alarm))
   self)
  (:system_failure
   (&optional __system_failure)
   (if __system_failure (setq _system_failure __system_failure)) _system_failure)
  (:accelerometer_sensor_failure
   (&optional __accelerometer_sensor_failure)
   (if __accelerometer_sensor_failure (setq _accelerometer_sensor_failure __accelerometer_sensor_failure)) _accelerometer_sensor_failure)
  (:gyroscope_sensor_failure
   (&optional __gyroscope_sensor_failure)
   (if __gyroscope_sensor_failure (setq _gyroscope_sensor_failure __gyroscope_sensor_failure)) _gyroscope_sensor_failure)
  (:magnetometer_sensor_failure
   (&optional __magnetometer_sensor_failure)
   (if __magnetometer_sensor_failure (setq _magnetometer_sensor_failure __magnetometer_sensor_failure)) _magnetometer_sensor_failure)
  (:pressure_sensor_failure
   (&optional __pressure_sensor_failure)
   (if __pressure_sensor_failure (setq _pressure_sensor_failure __pressure_sensor_failure)) _pressure_sensor_failure)
  (:gnss_failure
   (&optional __gnss_failure)
   (if __gnss_failure (setq _gnss_failure __gnss_failure)) _gnss_failure)
  (:accelerometer_over_range
   (&optional __accelerometer_over_range)
   (if __accelerometer_over_range (setq _accelerometer_over_range __accelerometer_over_range)) _accelerometer_over_range)
  (:gyroscope_over_range
   (&optional __gyroscope_over_range)
   (if __gyroscope_over_range (setq _gyroscope_over_range __gyroscope_over_range)) _gyroscope_over_range)
  (:magnetometer_over_range
   (&optional __magnetometer_over_range)
   (if __magnetometer_over_range (setq _magnetometer_over_range __magnetometer_over_range)) _magnetometer_over_range)
  (:pressure_over_range
   (&optional __pressure_over_range)
   (if __pressure_over_range (setq _pressure_over_range __pressure_over_range)) _pressure_over_range)
  (:minimum_temperature_alarm
   (&optional __minimum_temperature_alarm)
   (if __minimum_temperature_alarm (setq _minimum_temperature_alarm __minimum_temperature_alarm)) _minimum_temperature_alarm)
  (:maximum_temperature_alarm
   (&optional __maximum_temperature_alarm)
   (if __maximum_temperature_alarm (setq _maximum_temperature_alarm __maximum_temperature_alarm)) _maximum_temperature_alarm)
  (:low_voltage_alarm
   (&optional __low_voltage_alarm)
   (if __low_voltage_alarm (setq _low_voltage_alarm __low_voltage_alarm)) _low_voltage_alarm)
  (:high_voltage_alarm
   (&optional __high_voltage_alarm)
   (if __high_voltage_alarm (setq _high_voltage_alarm __high_voltage_alarm)) _high_voltage_alarm)
  (:gnss_antenna_disconnected
   (&optional __gnss_antenna_disconnected)
   (if __gnss_antenna_disconnected (setq _gnss_antenna_disconnected __gnss_antenna_disconnected)) _gnss_antenna_disconnected)
  (:serial_port_overflow_alarm
   (&optional __serial_port_overflow_alarm)
   (if __serial_port_overflow_alarm (setq _serial_port_overflow_alarm __serial_port_overflow_alarm)) _serial_port_overflow_alarm)
  (:serialization-length
   ()
   (+
    ;; uint8 _system_failure
    1
    ;; uint8 _accelerometer_sensor_failure
    1
    ;; uint8 _gyroscope_sensor_failure
    1
    ;; uint8 _magnetometer_sensor_failure
    1
    ;; uint8 _pressure_sensor_failure
    1
    ;; uint8 _gnss_failure
    1
    ;; uint8 _accelerometer_over_range
    1
    ;; uint8 _gyroscope_over_range
    1
    ;; uint8 _magnetometer_over_range
    1
    ;; uint8 _pressure_over_range
    1
    ;; uint8 _minimum_temperature_alarm
    1
    ;; uint8 _maximum_temperature_alarm
    1
    ;; uint8 _low_voltage_alarm
    1
    ;; uint8 _high_voltage_alarm
    1
    ;; uint8 _gnss_antenna_disconnected
    1
    ;; uint8 _serial_port_overflow_alarm
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _system_failure
       (write-byte _system_failure s)
     ;; uint8 _accelerometer_sensor_failure
       (write-byte _accelerometer_sensor_failure s)
     ;; uint8 _gyroscope_sensor_failure
       (write-byte _gyroscope_sensor_failure s)
     ;; uint8 _magnetometer_sensor_failure
       (write-byte _magnetometer_sensor_failure s)
     ;; uint8 _pressure_sensor_failure
       (write-byte _pressure_sensor_failure s)
     ;; uint8 _gnss_failure
       (write-byte _gnss_failure s)
     ;; uint8 _accelerometer_over_range
       (write-byte _accelerometer_over_range s)
     ;; uint8 _gyroscope_over_range
       (write-byte _gyroscope_over_range s)
     ;; uint8 _magnetometer_over_range
       (write-byte _magnetometer_over_range s)
     ;; uint8 _pressure_over_range
       (write-byte _pressure_over_range s)
     ;; uint8 _minimum_temperature_alarm
       (write-byte _minimum_temperature_alarm s)
     ;; uint8 _maximum_temperature_alarm
       (write-byte _maximum_temperature_alarm s)
     ;; uint8 _low_voltage_alarm
       (write-byte _low_voltage_alarm s)
     ;; uint8 _high_voltage_alarm
       (write-byte _high_voltage_alarm s)
     ;; uint8 _gnss_antenna_disconnected
       (write-byte _gnss_antenna_disconnected s)
     ;; uint8 _serial_port_overflow_alarm
       (write-byte _serial_port_overflow_alarm s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _system_failure
     (setq _system_failure (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _accelerometer_sensor_failure
     (setq _accelerometer_sensor_failure (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gyroscope_sensor_failure
     (setq _gyroscope_sensor_failure (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _magnetometer_sensor_failure
     (setq _magnetometer_sensor_failure (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _pressure_sensor_failure
     (setq _pressure_sensor_failure (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gnss_failure
     (setq _gnss_failure (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _accelerometer_over_range
     (setq _accelerometer_over_range (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gyroscope_over_range
     (setq _gyroscope_over_range (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _magnetometer_over_range
     (setq _magnetometer_over_range (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _pressure_over_range
     (setq _pressure_over_range (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _minimum_temperature_alarm
     (setq _minimum_temperature_alarm (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _maximum_temperature_alarm
     (setq _maximum_temperature_alarm (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _low_voltage_alarm
     (setq _low_voltage_alarm (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _high_voltage_alarm
     (setq _high_voltage_alarm (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gnss_antenna_disconnected
     (setq _gnss_antenna_disconnected (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _serial_port_overflow_alarm
     (setq _serial_port_overflow_alarm (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pamplemousse_sensors::systemStatus :md5sum-) "ff88f32a9d7643d1bcd0f5f56a25b1ec")
(setf (get pamplemousse_sensors::systemStatus :datatype-) "pamplemousse_sensors/systemStatus")
(setf (get pamplemousse_sensors::systemStatus :definition-)
      "# Defines the System Status subfields for the Spatial INS System State messages
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
")



(provide :pamplemousse_sensors/systemStatus "ff88f32a9d7643d1bcd0f5f56a25b1ec")


