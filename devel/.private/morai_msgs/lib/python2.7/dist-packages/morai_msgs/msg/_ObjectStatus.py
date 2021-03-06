# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from morai_msgs/ObjectStatus.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class ObjectStatus(genpy.Message):
  _md5sum = "3e51367c5b6e7a0a8b033499d3b63f6e"
  _type = "morai_msgs/ObjectStatus"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int32 unique_id
int32 type
string name
float64 heading
float64 velocity

geometry_msgs/Vector3 acceleration
geometry_msgs/Vector3 size
geometry_msgs/Vector3 position

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z"""
  __slots__ = ['unique_id','type','name','heading','velocity','acceleration','size','position']
  _slot_types = ['int32','int32','string','float64','float64','geometry_msgs/Vector3','geometry_msgs/Vector3','geometry_msgs/Vector3']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       unique_id,type,name,heading,velocity,acceleration,size,position

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ObjectStatus, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.unique_id is None:
        self.unique_id = 0
      if self.type is None:
        self.type = 0
      if self.name is None:
        self.name = ''
      if self.heading is None:
        self.heading = 0.
      if self.velocity is None:
        self.velocity = 0.
      if self.acceleration is None:
        self.acceleration = geometry_msgs.msg.Vector3()
      if self.size is None:
        self.size = geometry_msgs.msg.Vector3()
      if self.position is None:
        self.position = geometry_msgs.msg.Vector3()
    else:
      self.unique_id = 0
      self.type = 0
      self.name = ''
      self.heading = 0.
      self.velocity = 0.
      self.acceleration = geometry_msgs.msg.Vector3()
      self.size = geometry_msgs.msg.Vector3()
      self.position = geometry_msgs.msg.Vector3()

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
      buff.write(_get_struct_2i().pack(_x.unique_id, _x.type))
      _x = self.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_11d().pack(_x.heading, _x.velocity, _x.acceleration.x, _x.acceleration.y, _x.acceleration.z, _x.size.x, _x.size.y, _x.size.z, _x.position.x, _x.position.y, _x.position.z))
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
      if self.acceleration is None:
        self.acceleration = geometry_msgs.msg.Vector3()
      if self.size is None:
        self.size = geometry_msgs.msg.Vector3()
      if self.position is None:
        self.position = geometry_msgs.msg.Vector3()
      end = 0
      _x = self
      start = end
      end += 8
      (_x.unique_id, _x.type,) = _get_struct_2i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.name = str[start:end]
      _x = self
      start = end
      end += 88
      (_x.heading, _x.velocity, _x.acceleration.x, _x.acceleration.y, _x.acceleration.z, _x.size.x, _x.size.y, _x.size.z, _x.position.x, _x.position.y, _x.position.z,) = _get_struct_11d().unpack(str[start:end])
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
      buff.write(_get_struct_2i().pack(_x.unique_id, _x.type))
      _x = self.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_11d().pack(_x.heading, _x.velocity, _x.acceleration.x, _x.acceleration.y, _x.acceleration.z, _x.size.x, _x.size.y, _x.size.z, _x.position.x, _x.position.y, _x.position.z))
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
      if self.acceleration is None:
        self.acceleration = geometry_msgs.msg.Vector3()
      if self.size is None:
        self.size = geometry_msgs.msg.Vector3()
      if self.position is None:
        self.position = geometry_msgs.msg.Vector3()
      end = 0
      _x = self
      start = end
      end += 8
      (_x.unique_id, _x.type,) = _get_struct_2i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.name = str[start:end]
      _x = self
      start = end
      end += 88
      (_x.heading, _x.velocity, _x.acceleration.x, _x.acceleration.y, _x.acceleration.z, _x.size.x, _x.size.y, _x.size.z, _x.position.x, _x.position.y, _x.position.z,) = _get_struct_11d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_11d = None
def _get_struct_11d():
    global _struct_11d
    if _struct_11d is None:
        _struct_11d = struct.Struct("<11d")
    return _struct_11d
_struct_2i = None
def _get_struct_2i():
    global _struct_2i
    if _struct_2i is None:
        _struct_2i = struct.Struct("<2i")
    return _struct_2i
