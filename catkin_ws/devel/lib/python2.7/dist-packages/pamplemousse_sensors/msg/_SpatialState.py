# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from pamplemousse_sensors/SpatialState.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import pamplemousse_sensors.msg
import std_msgs.msg

class SpatialState(genpy.Message):
  _md5sum = "9da90427e4173bf5bfbba0285b9b9e2e"
  _type = "pamplemousse_sensors/SpatialState"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """# SpatialState.msg
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
uint8 external_heading_active"""
  __slots__ = ['header','system_status','filter_status','unix_time_seconds','microseconds','latitude','longitude','height','velocity','body_acceleration','g_force','orientation','angular_velocity','standard_deviation']
  _slot_types = ['std_msgs/Header','pamplemousse_sensors/systemStatus','pamplemousse_sensors/filterStatus','uint32','uint32','float64','float64','float64','float32[3]','float32[3]','float32','float32[3]','float32[3]','float32[3]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,system_status,filter_status,unix_time_seconds,microseconds,latitude,longitude,height,velocity,body_acceleration,g_force,orientation,angular_velocity,standard_deviation

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SpatialState, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.system_status is None:
        self.system_status = pamplemousse_sensors.msg.systemStatus()
      if self.filter_status is None:
        self.filter_status = pamplemousse_sensors.msg.filterStatus()
      if self.unix_time_seconds is None:
        self.unix_time_seconds = 0
      if self.microseconds is None:
        self.microseconds = 0
      if self.latitude is None:
        self.latitude = 0.
      if self.longitude is None:
        self.longitude = 0.
      if self.height is None:
        self.height = 0.
      if self.velocity is None:
        self.velocity = [0.] * 3
      if self.body_acceleration is None:
        self.body_acceleration = [0.] * 3
      if self.g_force is None:
        self.g_force = 0.
      if self.orientation is None:
        self.orientation = [0.] * 3
      if self.angular_velocity is None:
        self.angular_velocity = [0.] * 3
      if self.standard_deviation is None:
        self.standard_deviation = [0.] * 3
    else:
      self.header = std_msgs.msg.Header()
      self.system_status = pamplemousse_sensors.msg.systemStatus()
      self.filter_status = pamplemousse_sensors.msg.filterStatus()
      self.unix_time_seconds = 0
      self.microseconds = 0
      self.latitude = 0.
      self.longitude = 0.
      self.height = 0.
      self.velocity = [0.] * 3
      self.body_acceleration = [0.] * 3
      self.g_force = 0.
      self.orientation = [0.] * 3
      self.angular_velocity = [0.] * 3
      self.standard_deviation = [0.] * 3

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_29B2I3d().pack(_x.system_status.system_failure, _x.system_status.accelerometer_sensor_failure, _x.system_status.gyroscope_sensor_failure, _x.system_status.magnetometer_sensor_failure, _x.system_status.pressure_sensor_failure, _x.system_status.gnss_failure, _x.system_status.accelerometer_over_range, _x.system_status.gyroscope_over_range, _x.system_status.magnetometer_over_range, _x.system_status.pressure_over_range, _x.system_status.minimum_temperature_alarm, _x.system_status.maximum_temperature_alarm, _x.system_status.low_voltage_alarm, _x.system_status.high_voltage_alarm, _x.system_status.gnss_antenna_disconnected, _x.system_status.serial_port_overflow_alarm, _x.filter_status.ins_filter_initialised, _x.filter_status.heading_initialised, _x.filter_status.utc_time_initialised, _x.filter_status.gnss_fix_type, _x.filter_status.event1_flag, _x.filter_status.event2_flag, _x.filter_status.internal_gnss_enabled, _x.filter_status.magnetic_heading_enabled, _x.filter_status.velocity_heading_enabled, _x.filter_status.atmospheric_altitude_enabled, _x.filter_status.external_position_active, _x.filter_status.external_velocity_active, _x.filter_status.external_heading_active, _x.unix_time_seconds, _x.microseconds, _x.latitude, _x.longitude, _x.height))
      buff.write(_get_struct_3f().pack(*self.velocity))
      buff.write(_get_struct_3f().pack(*self.body_acceleration))
      _x = self.g_force
      buff.write(_get_struct_f().pack(_x))
      buff.write(_get_struct_3f().pack(*self.orientation))
      buff.write(_get_struct_3f().pack(*self.angular_velocity))
      buff.write(_get_struct_3f().pack(*self.standard_deviation))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.system_status is None:
        self.system_status = pamplemousse_sensors.msg.systemStatus()
      if self.filter_status is None:
        self.filter_status = pamplemousse_sensors.msg.filterStatus()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 61
      (_x.system_status.system_failure, _x.system_status.accelerometer_sensor_failure, _x.system_status.gyroscope_sensor_failure, _x.system_status.magnetometer_sensor_failure, _x.system_status.pressure_sensor_failure, _x.system_status.gnss_failure, _x.system_status.accelerometer_over_range, _x.system_status.gyroscope_over_range, _x.system_status.magnetometer_over_range, _x.system_status.pressure_over_range, _x.system_status.minimum_temperature_alarm, _x.system_status.maximum_temperature_alarm, _x.system_status.low_voltage_alarm, _x.system_status.high_voltage_alarm, _x.system_status.gnss_antenna_disconnected, _x.system_status.serial_port_overflow_alarm, _x.filter_status.ins_filter_initialised, _x.filter_status.heading_initialised, _x.filter_status.utc_time_initialised, _x.filter_status.gnss_fix_type, _x.filter_status.event1_flag, _x.filter_status.event2_flag, _x.filter_status.internal_gnss_enabled, _x.filter_status.magnetic_heading_enabled, _x.filter_status.velocity_heading_enabled, _x.filter_status.atmospheric_altitude_enabled, _x.filter_status.external_position_active, _x.filter_status.external_velocity_active, _x.filter_status.external_heading_active, _x.unix_time_seconds, _x.microseconds, _x.latitude, _x.longitude, _x.height,) = _get_struct_29B2I3d().unpack(str[start:end])
      start = end
      end += 12
      self.velocity = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 12
      self.body_acceleration = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 4
      (self.g_force,) = _get_struct_f().unpack(str[start:end])
      start = end
      end += 12
      self.orientation = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 12
      self.angular_velocity = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 12
      self.standard_deviation = _get_struct_3f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_29B2I3d().pack(_x.system_status.system_failure, _x.system_status.accelerometer_sensor_failure, _x.system_status.gyroscope_sensor_failure, _x.system_status.magnetometer_sensor_failure, _x.system_status.pressure_sensor_failure, _x.system_status.gnss_failure, _x.system_status.accelerometer_over_range, _x.system_status.gyroscope_over_range, _x.system_status.magnetometer_over_range, _x.system_status.pressure_over_range, _x.system_status.minimum_temperature_alarm, _x.system_status.maximum_temperature_alarm, _x.system_status.low_voltage_alarm, _x.system_status.high_voltage_alarm, _x.system_status.gnss_antenna_disconnected, _x.system_status.serial_port_overflow_alarm, _x.filter_status.ins_filter_initialised, _x.filter_status.heading_initialised, _x.filter_status.utc_time_initialised, _x.filter_status.gnss_fix_type, _x.filter_status.event1_flag, _x.filter_status.event2_flag, _x.filter_status.internal_gnss_enabled, _x.filter_status.magnetic_heading_enabled, _x.filter_status.velocity_heading_enabled, _x.filter_status.atmospheric_altitude_enabled, _x.filter_status.external_position_active, _x.filter_status.external_velocity_active, _x.filter_status.external_heading_active, _x.unix_time_seconds, _x.microseconds, _x.latitude, _x.longitude, _x.height))
      buff.write(self.velocity.tostring())
      buff.write(self.body_acceleration.tostring())
      _x = self.g_force
      buff.write(_get_struct_f().pack(_x))
      buff.write(self.orientation.tostring())
      buff.write(self.angular_velocity.tostring())
      buff.write(self.standard_deviation.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.system_status is None:
        self.system_status = pamplemousse_sensors.msg.systemStatus()
      if self.filter_status is None:
        self.filter_status = pamplemousse_sensors.msg.filterStatus()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 61
      (_x.system_status.system_failure, _x.system_status.accelerometer_sensor_failure, _x.system_status.gyroscope_sensor_failure, _x.system_status.magnetometer_sensor_failure, _x.system_status.pressure_sensor_failure, _x.system_status.gnss_failure, _x.system_status.accelerometer_over_range, _x.system_status.gyroscope_over_range, _x.system_status.magnetometer_over_range, _x.system_status.pressure_over_range, _x.system_status.minimum_temperature_alarm, _x.system_status.maximum_temperature_alarm, _x.system_status.low_voltage_alarm, _x.system_status.high_voltage_alarm, _x.system_status.gnss_antenna_disconnected, _x.system_status.serial_port_overflow_alarm, _x.filter_status.ins_filter_initialised, _x.filter_status.heading_initialised, _x.filter_status.utc_time_initialised, _x.filter_status.gnss_fix_type, _x.filter_status.event1_flag, _x.filter_status.event2_flag, _x.filter_status.internal_gnss_enabled, _x.filter_status.magnetic_heading_enabled, _x.filter_status.velocity_heading_enabled, _x.filter_status.atmospheric_altitude_enabled, _x.filter_status.external_position_active, _x.filter_status.external_velocity_active, _x.filter_status.external_heading_active, _x.unix_time_seconds, _x.microseconds, _x.latitude, _x.longitude, _x.height,) = _get_struct_29B2I3d().unpack(str[start:end])
      start = end
      end += 12
      self.velocity = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      start = end
      end += 12
      self.body_acceleration = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      start = end
      end += 4
      (self.g_force,) = _get_struct_f().unpack(str[start:end])
      start = end
      end += 12
      self.orientation = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      start = end
      end += 12
      self.angular_velocity = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      start = end
      end += 12
      self.standard_deviation = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_29B2I3d = None
def _get_struct_29B2I3d():
    global _struct_29B2I3d
    if _struct_29B2I3d is None:
        _struct_29B2I3d = struct.Struct("<29B2I3d")
    return _struct_29B2I3d
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
_struct_f = None
def _get_struct_f():
    global _struct_f
    if _struct_f is None:
        _struct_f = struct.Struct("<f")
    return _struct_f
