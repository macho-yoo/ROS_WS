# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from morai_msgs/ScenarioLoad.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class ScenarioLoad(genpy.Message):
  _md5sum = "6f3a3dd0165dd2974e952deb6192160a"
  _type = "morai_msgs/ScenarioLoad"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string file_name
bool load_network_connection_data
bool delete_all
bool load_ego_vehicle_data
bool load_surrounding_vehicle_data
bool load_pedestrian_data
bool load_obstacle_data
bool set_pause
"""
  __slots__ = ['file_name','load_network_connection_data','delete_all','load_ego_vehicle_data','load_surrounding_vehicle_data','load_pedestrian_data','load_obstacle_data','set_pause']
  _slot_types = ['string','bool','bool','bool','bool','bool','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       file_name,load_network_connection_data,delete_all,load_ego_vehicle_data,load_surrounding_vehicle_data,load_pedestrian_data,load_obstacle_data,set_pause

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ScenarioLoad, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.file_name is None:
        self.file_name = ''
      if self.load_network_connection_data is None:
        self.load_network_connection_data = False
      if self.delete_all is None:
        self.delete_all = False
      if self.load_ego_vehicle_data is None:
        self.load_ego_vehicle_data = False
      if self.load_surrounding_vehicle_data is None:
        self.load_surrounding_vehicle_data = False
      if self.load_pedestrian_data is None:
        self.load_pedestrian_data = False
      if self.load_obstacle_data is None:
        self.load_obstacle_data = False
      if self.set_pause is None:
        self.set_pause = False
    else:
      self.file_name = ''
      self.load_network_connection_data = False
      self.delete_all = False
      self.load_ego_vehicle_data = False
      self.load_surrounding_vehicle_data = False
      self.load_pedestrian_data = False
      self.load_obstacle_data = False
      self.set_pause = False

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
      _x = self.file_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7B().pack(_x.load_network_connection_data, _x.delete_all, _x.load_ego_vehicle_data, _x.load_surrounding_vehicle_data, _x.load_pedestrian_data, _x.load_obstacle_data, _x.set_pause))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.file_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.file_name = str[start:end]
      _x = self
      start = end
      end += 7
      (_x.load_network_connection_data, _x.delete_all, _x.load_ego_vehicle_data, _x.load_surrounding_vehicle_data, _x.load_pedestrian_data, _x.load_obstacle_data, _x.set_pause,) = _get_struct_7B().unpack(str[start:end])
      self.load_network_connection_data = bool(self.load_network_connection_data)
      self.delete_all = bool(self.delete_all)
      self.load_ego_vehicle_data = bool(self.load_ego_vehicle_data)
      self.load_surrounding_vehicle_data = bool(self.load_surrounding_vehicle_data)
      self.load_pedestrian_data = bool(self.load_pedestrian_data)
      self.load_obstacle_data = bool(self.load_obstacle_data)
      self.set_pause = bool(self.set_pause)
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
      _x = self.file_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7B().pack(_x.load_network_connection_data, _x.delete_all, _x.load_ego_vehicle_data, _x.load_surrounding_vehicle_data, _x.load_pedestrian_data, _x.load_obstacle_data, _x.set_pause))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.file_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.file_name = str[start:end]
      _x = self
      start = end
      end += 7
      (_x.load_network_connection_data, _x.delete_all, _x.load_ego_vehicle_data, _x.load_surrounding_vehicle_data, _x.load_pedestrian_data, _x.load_obstacle_data, _x.set_pause,) = _get_struct_7B().unpack(str[start:end])
      self.load_network_connection_data = bool(self.load_network_connection_data)
      self.delete_all = bool(self.delete_all)
      self.load_ego_vehicle_data = bool(self.load_ego_vehicle_data)
      self.load_surrounding_vehicle_data = bool(self.load_surrounding_vehicle_data)
      self.load_pedestrian_data = bool(self.load_pedestrian_data)
      self.load_obstacle_data = bool(self.load_obstacle_data)
      self.set_pause = bool(self.set_pause)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7B = None
def _get_struct_7B():
    global _struct_7B
    if _struct_7B is None:
        _struct_7B = struct.Struct("<7B")
    return _struct_7B
