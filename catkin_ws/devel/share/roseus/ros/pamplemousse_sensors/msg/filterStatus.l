;; Auto-generated. Do not edit!


(when (boundp 'pamplemousse_sensors::filterStatus)
  (if (not (find-package "PAMPLEMOUSSE_SENSORS"))
    (make-package "PAMPLEMOUSSE_SENSORS"))
  (shadow 'filterStatus (find-package "PAMPLEMOUSSE_SENSORS")))
(unless (find-package "PAMPLEMOUSSE_SENSORS::FILTERSTATUS")
  (make-package "PAMPLEMOUSSE_SENSORS::FILTERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude filterStatus.msg.html


(defclass pamplemousse_sensors::filterStatus
  :super ros::object
  :slots (_ins_filter_initialised _heading_initialised _utc_time_initialised _gnss_fix_type _event1_flag _event2_flag _internal_gnss_enabled _magnetic_heading_enabled _velocity_heading_enabled _atmospheric_altitude_enabled _external_position_active _external_velocity_active _external_heading_active ))

(defmethod pamplemousse_sensors::filterStatus
  (:init
   (&key
    ((:ins_filter_initialised __ins_filter_initialised) 0)
    ((:heading_initialised __heading_initialised) 0)
    ((:utc_time_initialised __utc_time_initialised) 0)
    ((:gnss_fix_type __gnss_fix_type) 0)
    ((:event1_flag __event1_flag) 0)
    ((:event2_flag __event2_flag) 0)
    ((:internal_gnss_enabled __internal_gnss_enabled) 0)
    ((:magnetic_heading_enabled __magnetic_heading_enabled) 0)
    ((:velocity_heading_enabled __velocity_heading_enabled) 0)
    ((:atmospheric_altitude_enabled __atmospheric_altitude_enabled) 0)
    ((:external_position_active __external_position_active) 0)
    ((:external_velocity_active __external_velocity_active) 0)
    ((:external_heading_active __external_heading_active) 0)
    )
   (send-super :init)
   (setq _ins_filter_initialised (round __ins_filter_initialised))
   (setq _heading_initialised (round __heading_initialised))
   (setq _utc_time_initialised (round __utc_time_initialised))
   (setq _gnss_fix_type (round __gnss_fix_type))
   (setq _event1_flag (round __event1_flag))
   (setq _event2_flag (round __event2_flag))
   (setq _internal_gnss_enabled (round __internal_gnss_enabled))
   (setq _magnetic_heading_enabled (round __magnetic_heading_enabled))
   (setq _velocity_heading_enabled (round __velocity_heading_enabled))
   (setq _atmospheric_altitude_enabled (round __atmospheric_altitude_enabled))
   (setq _external_position_active (round __external_position_active))
   (setq _external_velocity_active (round __external_velocity_active))
   (setq _external_heading_active (round __external_heading_active))
   self)
  (:ins_filter_initialised
   (&optional __ins_filter_initialised)
   (if __ins_filter_initialised (setq _ins_filter_initialised __ins_filter_initialised)) _ins_filter_initialised)
  (:heading_initialised
   (&optional __heading_initialised)
   (if __heading_initialised (setq _heading_initialised __heading_initialised)) _heading_initialised)
  (:utc_time_initialised
   (&optional __utc_time_initialised)
   (if __utc_time_initialised (setq _utc_time_initialised __utc_time_initialised)) _utc_time_initialised)
  (:gnss_fix_type
   (&optional __gnss_fix_type)
   (if __gnss_fix_type (setq _gnss_fix_type __gnss_fix_type)) _gnss_fix_type)
  (:event1_flag
   (&optional __event1_flag)
   (if __event1_flag (setq _event1_flag __event1_flag)) _event1_flag)
  (:event2_flag
   (&optional __event2_flag)
   (if __event2_flag (setq _event2_flag __event2_flag)) _event2_flag)
  (:internal_gnss_enabled
   (&optional __internal_gnss_enabled)
   (if __internal_gnss_enabled (setq _internal_gnss_enabled __internal_gnss_enabled)) _internal_gnss_enabled)
  (:magnetic_heading_enabled
   (&optional __magnetic_heading_enabled)
   (if __magnetic_heading_enabled (setq _magnetic_heading_enabled __magnetic_heading_enabled)) _magnetic_heading_enabled)
  (:velocity_heading_enabled
   (&optional __velocity_heading_enabled)
   (if __velocity_heading_enabled (setq _velocity_heading_enabled __velocity_heading_enabled)) _velocity_heading_enabled)
  (:atmospheric_altitude_enabled
   (&optional __atmospheric_altitude_enabled)
   (if __atmospheric_altitude_enabled (setq _atmospheric_altitude_enabled __atmospheric_altitude_enabled)) _atmospheric_altitude_enabled)
  (:external_position_active
   (&optional __external_position_active)
   (if __external_position_active (setq _external_position_active __external_position_active)) _external_position_active)
  (:external_velocity_active
   (&optional __external_velocity_active)
   (if __external_velocity_active (setq _external_velocity_active __external_velocity_active)) _external_velocity_active)
  (:external_heading_active
   (&optional __external_heading_active)
   (if __external_heading_active (setq _external_heading_active __external_heading_active)) _external_heading_active)
  (:serialization-length
   ()
   (+
    ;; uint8 _ins_filter_initialised
    1
    ;; uint8 _heading_initialised
    1
    ;; uint8 _utc_time_initialised
    1
    ;; uint8 _gnss_fix_type
    1
    ;; uint8 _event1_flag
    1
    ;; uint8 _event2_flag
    1
    ;; uint8 _internal_gnss_enabled
    1
    ;; uint8 _magnetic_heading_enabled
    1
    ;; uint8 _velocity_heading_enabled
    1
    ;; uint8 _atmospheric_altitude_enabled
    1
    ;; uint8 _external_position_active
    1
    ;; uint8 _external_velocity_active
    1
    ;; uint8 _external_heading_active
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _ins_filter_initialised
       (write-byte _ins_filter_initialised s)
     ;; uint8 _heading_initialised
       (write-byte _heading_initialised s)
     ;; uint8 _utc_time_initialised
       (write-byte _utc_time_initialised s)
     ;; uint8 _gnss_fix_type
       (write-byte _gnss_fix_type s)
     ;; uint8 _event1_flag
       (write-byte _event1_flag s)
     ;; uint8 _event2_flag
       (write-byte _event2_flag s)
     ;; uint8 _internal_gnss_enabled
       (write-byte _internal_gnss_enabled s)
     ;; uint8 _magnetic_heading_enabled
       (write-byte _magnetic_heading_enabled s)
     ;; uint8 _velocity_heading_enabled
       (write-byte _velocity_heading_enabled s)
     ;; uint8 _atmospheric_altitude_enabled
       (write-byte _atmospheric_altitude_enabled s)
     ;; uint8 _external_position_active
       (write-byte _external_position_active s)
     ;; uint8 _external_velocity_active
       (write-byte _external_velocity_active s)
     ;; uint8 _external_heading_active
       (write-byte _external_heading_active s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _ins_filter_initialised
     (setq _ins_filter_initialised (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _heading_initialised
     (setq _heading_initialised (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _utc_time_initialised
     (setq _utc_time_initialised (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gnss_fix_type
     (setq _gnss_fix_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _event1_flag
     (setq _event1_flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _event2_flag
     (setq _event2_flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _internal_gnss_enabled
     (setq _internal_gnss_enabled (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _magnetic_heading_enabled
     (setq _magnetic_heading_enabled (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _velocity_heading_enabled
     (setq _velocity_heading_enabled (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _atmospheric_altitude_enabled
     (setq _atmospheric_altitude_enabled (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _external_position_active
     (setq _external_position_active (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _external_velocity_active
     (setq _external_velocity_active (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _external_heading_active
     (setq _external_heading_active (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pamplemousse_sensors::filterStatus :md5sum-) "6802282c725c35556f638fa802316676")
(setf (get pamplemousse_sensors::filterStatus :datatype-) "pamplemousse_sensors/filterStatus")
(setf (get pamplemousse_sensors::filterStatus :definition-)
      "# Defines the Filter Status subfields for the Spatial INS System State messagesuint8 orientation_filter_initialised
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



(provide :pamplemousse_sensors/filterStatus "6802282c725c35556f638fa802316676")


