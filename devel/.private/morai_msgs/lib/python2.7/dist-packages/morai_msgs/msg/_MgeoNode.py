# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from morai_msgs/MgeoNode.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class MgeoNode(genpy.Message):
  _md5sum = "e260c05524b8fac9ccdd7f9ed4a7cd47"
  _type = "morai_msgs/MgeoNode"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string node_id
float32 cost
float32 time_cost

int32 node_type #if the node type is -1, unuse this data

string[] to_link_id
string[] from_link_id

geometry_msgs/Pose node

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  __slots__ = ['node_id','cost','time_cost','node_type','to_link_id','from_link_id','node']
  _slot_types = ['string','float32','float32','int32','string[]','string[]','geometry_msgs/Pose']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       node_id,cost,time_cost,node_type,to_link_id,from_link_id,node

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MgeoNode, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.node_id is None:
        self.node_id = ''
      if self.cost is None:
        self.cost = 0.
      if self.time_cost is None:
        self.time_cost = 0.
      if self.node_type is None:
        self.node_type = 0
      if self.to_link_id is None:
        self.to_link_id = []
      if self.from_link_id is None:
        self.from_link_id = []
      if self.node is None:
        self.node = geometry_msgs.msg.Pose()
    else:
      self.node_id = ''
      self.cost = 0.
      self.time_cost = 0.
      self.node_type = 0
      self.to_link_id = []
      self.from_link_id = []
      self.node = geometry_msgs.msg.Pose()

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
      _x = self.node_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2fi().pack(_x.cost, _x.time_cost, _x.node_type))
      length = len(self.to_link_id)
      buff.write(_struct_I.pack(length))
      for val1 in self.to_link_id:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      length = len(self.from_link_id)
      buff.write(_struct_I.pack(length))
      for val1 in self.from_link_id:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      _x = self
      buff.write(_get_struct_7d().pack(_x.node.position.x, _x.node.position.y, _x.node.position.z, _x.node.orientation.x, _x.node.orientation.y, _x.node.orientation.z, _x.node.orientation.w))
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
      if self.node is None:
        self.node = geometry_msgs.msg.Pose()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.node_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.node_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.cost, _x.time_cost, _x.node_type,) = _get_struct_2fi().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.to_link_id = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1 = str[start:end]
        self.to_link_id.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.from_link_id = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1 = str[start:end]
        self.from_link_id.append(val1)
      _x = self
      start = end
      end += 56
      (_x.node.position.x, _x.node.position.y, _x.node.position.z, _x.node.orientation.x, _x.node.orientation.y, _x.node.orientation.z, _x.node.orientation.w,) = _get_struct_7d().unpack(str[start:end])
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
      _x = self.node_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2fi().pack(_x.cost, _x.time_cost, _x.node_type))
      length = len(self.to_link_id)
      buff.write(_struct_I.pack(length))
      for val1 in self.to_link_id:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      length = len(self.from_link_id)
      buff.write(_struct_I.pack(length))
      for val1 in self.from_link_id:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      _x = self
      buff.write(_get_struct_7d().pack(_x.node.position.x, _x.node.position.y, _x.node.position.z, _x.node.orientation.x, _x.node.orientation.y, _x.node.orientation.z, _x.node.orientation.w))
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
      if self.node is None:
        self.node = geometry_msgs.msg.Pose()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.node_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.node_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.cost, _x.time_cost, _x.node_type,) = _get_struct_2fi().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.to_link_id = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1 = str[start:end]
        self.to_link_id.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.from_link_id = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1 = str[start:end]
        self.from_link_id.append(val1)
      _x = self
      start = end
      end += 56
      (_x.node.position.x, _x.node.position.y, _x.node.position.z, _x.node.orientation.x, _x.node.orientation.y, _x.node.orientation.z, _x.node.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2fi = None
def _get_struct_2fi():
    global _struct_2fi
    if _struct_2fi is None:
        _struct_2fi = struct.Struct("<2fi")
    return _struct_2fi
_struct_7d = None
def _get_struct_7d():
    global _struct_7d
    if _struct_7d is None:
        _struct_7d = struct.Struct("<7d")
    return _struct_7d
