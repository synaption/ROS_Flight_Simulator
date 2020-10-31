; Auto-generated. Do not edit!


(cl:in-package pamplemousse_sensors-msg)


;//! \htmlinclude filterStatus.msg.html

(cl:defclass <filterStatus> (roslisp-msg-protocol:ros-message)
  ((ins_filter_initialised
    :reader ins_filter_initialised
    :initarg :ins_filter_initialised
    :type cl:fixnum
    :initform 0)
   (heading_initialised
    :reader heading_initialised
    :initarg :heading_initialised
    :type cl:fixnum
    :initform 0)
   (utc_time_initialised
    :reader utc_time_initialised
    :initarg :utc_time_initialised
    :type cl:fixnum
    :initform 0)
   (gnss_fix_type
    :reader gnss_fix_type
    :initarg :gnss_fix_type
    :type cl:fixnum
    :initform 0)
   (event1_flag
    :reader event1_flag
    :initarg :event1_flag
    :type cl:fixnum
    :initform 0)
   (event2_flag
    :reader event2_flag
    :initarg :event2_flag
    :type cl:fixnum
    :initform 0)
   (internal_gnss_enabled
    :reader internal_gnss_enabled
    :initarg :internal_gnss_enabled
    :type cl:fixnum
    :initform 0)
   (magnetic_heading_enabled
    :reader magnetic_heading_enabled
    :initarg :magnetic_heading_enabled
    :type cl:fixnum
    :initform 0)
   (velocity_heading_enabled
    :reader velocity_heading_enabled
    :initarg :velocity_heading_enabled
    :type cl:fixnum
    :initform 0)
   (atmospheric_altitude_enabled
    :reader atmospheric_altitude_enabled
    :initarg :atmospheric_altitude_enabled
    :type cl:fixnum
    :initform 0)
   (external_position_active
    :reader external_position_active
    :initarg :external_position_active
    :type cl:fixnum
    :initform 0)
   (external_velocity_active
    :reader external_velocity_active
    :initarg :external_velocity_active
    :type cl:fixnum
    :initform 0)
   (external_heading_active
    :reader external_heading_active
    :initarg :external_heading_active
    :type cl:fixnum
    :initform 0))
)

(cl:defclass filterStatus (<filterStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <filterStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'filterStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pamplemousse_sensors-msg:<filterStatus> is deprecated: use pamplemousse_sensors-msg:filterStatus instead.")))

(cl:ensure-generic-function 'ins_filter_initialised-val :lambda-list '(m))
(cl:defmethod ins_filter_initialised-val ((m <filterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:ins_filter_initialised-val is deprecated.  Use pamplemousse_sensors-msg:ins_filter_initialised instead.")
  (ins_filter_initialised m))

(cl:ensure-generic-function 'heading_initialised-val :lambda-list '(m))
(cl:defmethod heading_initialised-val ((m <filterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:heading_initialised-val is deprecated.  Use pamplemousse_sensors-msg:heading_initialised instead.")
  (heading_initialised m))

(cl:ensure-generic-function 'utc_time_initialised-val :lambda-list '(m))
(cl:defmethod utc_time_initialised-val ((m <filterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:utc_time_initialised-val is deprecated.  Use pamplemousse_sensors-msg:utc_time_initialised instead.")
  (utc_time_initialised m))

(cl:ensure-generic-function 'gnss_fix_type-val :lambda-list '(m))
(cl:defmethod gnss_fix_type-val ((m <filterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:gnss_fix_type-val is deprecated.  Use pamplemousse_sensors-msg:gnss_fix_type instead.")
  (gnss_fix_type m))

(cl:ensure-generic-function 'event1_flag-val :lambda-list '(m))
(cl:defmethod event1_flag-val ((m <filterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:event1_flag-val is deprecated.  Use pamplemousse_sensors-msg:event1_flag instead.")
  (event1_flag m))

(cl:ensure-generic-function 'event2_flag-val :lambda-list '(m))
(cl:defmethod event2_flag-val ((m <filterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:event2_flag-val is deprecated.  Use pamplemousse_sensors-msg:event2_flag instead.")
  (event2_flag m))

(cl:ensure-generic-function 'internal_gnss_enabled-val :lambda-list '(m))
(cl:defmethod internal_gnss_enabled-val ((m <filterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:internal_gnss_enabled-val is deprecated.  Use pamplemousse_sensors-msg:internal_gnss_enabled instead.")
  (internal_gnss_enabled m))

(cl:ensure-generic-function 'magnetic_heading_enabled-val :lambda-list '(m))
(cl:defmethod magnetic_heading_enabled-val ((m <filterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:magnetic_heading_enabled-val is deprecated.  Use pamplemousse_sensors-msg:magnetic_heading_enabled instead.")
  (magnetic_heading_enabled m))

(cl:ensure-generic-function 'velocity_heading_enabled-val :lambda-list '(m))
(cl:defmethod velocity_heading_enabled-val ((m <filterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:velocity_heading_enabled-val is deprecated.  Use pamplemousse_sensors-msg:velocity_heading_enabled instead.")
  (velocity_heading_enabled m))

(cl:ensure-generic-function 'atmospheric_altitude_enabled-val :lambda-list '(m))
(cl:defmethod atmospheric_altitude_enabled-val ((m <filterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:atmospheric_altitude_enabled-val is deprecated.  Use pamplemousse_sensors-msg:atmospheric_altitude_enabled instead.")
  (atmospheric_altitude_enabled m))

(cl:ensure-generic-function 'external_position_active-val :lambda-list '(m))
(cl:defmethod external_position_active-val ((m <filterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:external_position_active-val is deprecated.  Use pamplemousse_sensors-msg:external_position_active instead.")
  (external_position_active m))

(cl:ensure-generic-function 'external_velocity_active-val :lambda-list '(m))
(cl:defmethod external_velocity_active-val ((m <filterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:external_velocity_active-val is deprecated.  Use pamplemousse_sensors-msg:external_velocity_active instead.")
  (external_velocity_active m))

(cl:ensure-generic-function 'external_heading_active-val :lambda-list '(m))
(cl:defmethod external_heading_active-val ((m <filterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pamplemousse_sensors-msg:external_heading_active-val is deprecated.  Use pamplemousse_sensors-msg:external_heading_active instead.")
  (external_heading_active m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <filterStatus>) ostream)
  "Serializes a message object of type '<filterStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ins_filter_initialised)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'heading_initialised)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'utc_time_initialised)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gnss_fix_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'event1_flag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'event2_flag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'internal_gnss_enabled)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'magnetic_heading_enabled)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'velocity_heading_enabled)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'atmospheric_altitude_enabled)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'external_position_active)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'external_velocity_active)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'external_heading_active)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <filterStatus>) istream)
  "Deserializes a message object of type '<filterStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ins_filter_initialised)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'heading_initialised)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'utc_time_initialised)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gnss_fix_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'event1_flag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'event2_flag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'internal_gnss_enabled)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'magnetic_heading_enabled)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'velocity_heading_enabled)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'atmospheric_altitude_enabled)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'external_position_active)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'external_velocity_active)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'external_heading_active)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<filterStatus>)))
  "Returns string type for a message object of type '<filterStatus>"
  "pamplemousse_sensors/filterStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'filterStatus)))
  "Returns string type for a message object of type 'filterStatus"
  "pamplemousse_sensors/filterStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<filterStatus>)))
  "Returns md5sum for a message object of type '<filterStatus>"
  "6802282c725c35556f638fa802316676")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'filterStatus)))
  "Returns md5sum for a message object of type 'filterStatus"
  "6802282c725c35556f638fa802316676")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<filterStatus>)))
  "Returns full string definition for message of type '<filterStatus>"
  (cl:format cl:nil "# Defines the Filter Status subfields for the Spatial INS System State messagesuint8 orientation_filter_initialised~%#~%uint8 ins_filter_initialised~%uint8 heading_initialised~%uint8 utc_time_initialised~%uint8 gnss_fix_type~%uint8 event1_flag~%uint8 event2_flag~%uint8 internal_gnss_enabled~%uint8 magnetic_heading_enabled~%uint8 velocity_heading_enabled~%uint8 atmospheric_altitude_enabled~%uint8 external_position_active~%uint8 external_velocity_active~%uint8 external_heading_active~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'filterStatus)))
  "Returns full string definition for message of type 'filterStatus"
  (cl:format cl:nil "# Defines the Filter Status subfields for the Spatial INS System State messagesuint8 orientation_filter_initialised~%#~%uint8 ins_filter_initialised~%uint8 heading_initialised~%uint8 utc_time_initialised~%uint8 gnss_fix_type~%uint8 event1_flag~%uint8 event2_flag~%uint8 internal_gnss_enabled~%uint8 magnetic_heading_enabled~%uint8 velocity_heading_enabled~%uint8 atmospheric_altitude_enabled~%uint8 external_position_active~%uint8 external_velocity_active~%uint8 external_heading_active~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <filterStatus>))
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
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <filterStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'filterStatus
    (cl:cons ':ins_filter_initialised (ins_filter_initialised msg))
    (cl:cons ':heading_initialised (heading_initialised msg))
    (cl:cons ':utc_time_initialised (utc_time_initialised msg))
    (cl:cons ':gnss_fix_type (gnss_fix_type msg))
    (cl:cons ':event1_flag (event1_flag msg))
    (cl:cons ':event2_flag (event2_flag msg))
    (cl:cons ':internal_gnss_enabled (internal_gnss_enabled msg))
    (cl:cons ':magnetic_heading_enabled (magnetic_heading_enabled msg))
    (cl:cons ':velocity_heading_enabled (velocity_heading_enabled msg))
    (cl:cons ':atmospheric_altitude_enabled (atmospheric_altitude_enabled msg))
    (cl:cons ':external_position_active (external_position_active msg))
    (cl:cons ':external_velocity_active (external_velocity_active msg))
    (cl:cons ':external_heading_active (external_heading_active msg))
))
