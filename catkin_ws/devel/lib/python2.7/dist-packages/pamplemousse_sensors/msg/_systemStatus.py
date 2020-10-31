# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from pamplemousse_sensors/systemStatus.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class systemStatus(genpy.Message):
  _md5sum = "ff88f32a9d7643d1bcd0f5f56a25b1ec"
  _type = "pamplemousse_sensors/systemStatus"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# Defines the System Status subfields for the Spatial INS System State messages
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
uint8 serial_port_overflow_alarm"""
  __slots__ = ['system_failure','accelerometer_sensor_failure','gyroscope_sensor_failure','magnetometer_sensor_failure','pressure_sensor_failure','gnss_failure','accelerometer_over_range','gyroscope_over_range','magnetometer_over_range','pressure_over_range','minimum_temperature_alarm','maximum_temperature_alarm','low_voltage_alarm','high_voltage_alarm','gnss_antenna_disconnected','serial_port_overflow_alarm']
  _slot_types = ['uint8','uint8','uint8','uint8','uint8','uint8','uint8','uint8','uint8','uint8','uint8','uint8','uint8','uint8','uint8','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       system_failure,accelerometer_sensor_failure,gyroscope_sensor_failure,magnetometer_sensor_failure,pressure_sensor_failure,gnss_failure,accelerometer_over_range,gyroscope_over_range,magnetometer_over_range,pressure_over_range,minimum_temperature_alarm,maximum_temperature_alarm,low_voltage_alarm,high_voltage_alarm,gnss_antenna_disconnected,serial_port_overflow_alarm

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(systemStatus, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.system_failure is None:
        self.system_failure = 0
      if self.accelerometer_sensor_failure is None:
        self.accelerometer_sensor_failure = 0
      if self.gyroscope_sensor_failure is None:
        self.gyroscope_sensor_failure = 0
      if self.magnetometer_sensor_failure is None:
        self.magnetometer_sensor_failure = 0
      if self.pressure_sensor_failure is None:
        self.pressure_sensor_failure = 0
      if self.gnss_failure is None:
        self.gnss_failure = 0
      if self.accelerometer_over_range is None:
        self.accelerometer_over_range = 0
      if self.gyroscope_over_range is None:
        self.gyroscope_over_range = 0
      if self.magnetometer_over_range is None:
        self.magnetometer_over_range = 0
      if self.pressure_over_range is None:
        self.pressure_over_range = 0
      if self.minimum_temperature_alarm is None:
        self.minimum_temperature_alarm = 0
      if self.maximum_temperature_alarm is None:
        self.maximum_temperature_alarm = 0
      if self.low_voltage_alarm is None:
        self.low_voltage_alarm = 0
      if self.high_voltage_alarm is None:
        self.high_voltage_alarm = 0
      if self.gnss_antenna_disconnected is None:
        self.gnss_antenna_disconnected = 0
      if self.serial_port_overflow_alarm is None:
        self.serial_port_overflow_alarm = 0
    else:
      self.system_failure = 0
      self.accelerometer_sensor_failure = 0
      self.gyroscope_sensor_failure = 0
      self.magnetometer_sensor_failure = 0
      self.pressure_sensor_failure = 0
      self.gnss_failure = 0
      self.accelerometer_over_range = 0
      self.gyroscope_over_range = 0
      self.magnetometer_over_range = 0
      self.pressure_over_range = 0
      self.minimum_temperature_alarm = 0
      self.maximum_temperature_alarm = 0
      self.low_voltage_alarm = 0
      self.high_voltage_alarm = 0
      self.gnss_antenna_disconnected = 0
      self.serial_port_overflow_alarm = 0

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
      buff.write(_get_struct_16B().pack(_x.system_failure, _x.accelerometer_sensor_failure, _x.gyroscope_sensor_failure, _x.magnetometer_sensor_failure, _x.pressure_sensor_failure, _x.gnss_failure, _x.accelerometer_over_range, _x.gyroscope_over_range, _x.magnetometer_over_range, _x.pressure_over_range, _x.minimum_temperature_alarm, _x.maximum_temperature_alarm, _x.low_voltage_alarm, _x.high_voltage_alarm, _x.gnss_antenna_disconnected, _x.serial_port_overflow_alarm))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 16
      (_x.system_failure, _x.accelerometer_sensor_failure, _x.gyroscope_sensor_failure, _x.magnetometer_sensor_failure, _x.pressure_sensor_failure, _x.gnss_failure, _x.accelerometer_over_range, _x.gyroscope_over_range, _x.magnetometer_over_range, _x.pressure_over_range, _x.minimum_temperature_alarm, _x.maximum_temperature_alarm, _x.low_voltage_alarm, _x.high_voltage_alarm, _x.gnss_antenna_disconnected, _x.serial_port_overflow_alarm,) = _get_struct_16B().unpack(str[start:end])
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
      buff.write(_get_struct_16B().pack(_x.system_failure, _x.accelerometer_sensor_failure, _x.gyroscope_sensor_failure, _x.magnetometer_sensor_failure, _x.pressure_sensor_failure, _x.gnss_failure, _x.accelerometer_over_range, _x.gyroscope_over_range, _x.magnetometer_over_range, _x.pressure_over_range, _x.minimum_temperature_alarm, _x.maximum_temperature_alarm, _x.low_voltage_alarm, _x.high_voltage_alarm, _x.gnss_antenna_disconnected, _x.serial_port_overflow_alarm))
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
      end = 0
      _x = self
      start = end
      end += 16
      (_x.system_failure, _x.accelerometer_sensor_failure, _x.gyroscope_sensor_failure, _x.magnetometer_sensor_failure, _x.pressure_sensor_failure, _x.gnss_failure, _x.accelerometer_over_range, _x.gyroscope_over_range, _x.magnetometer_over_range, _x.pressure_over_range, _x.minimum_temperature_alarm, _x.maximum_temperature_alarm, _x.low_voltage_alarm, _x.high_voltage_alarm, _x.gnss_antenna_disconnected, _x.serial_port_overflow_alarm,) = _get_struct_16B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_16B = None
def _get_struct_16B():
    global _struct_16B
    if _struct_16B is None:
        _struct_16B = struct.Struct("<16B")
    return _struct_16B
