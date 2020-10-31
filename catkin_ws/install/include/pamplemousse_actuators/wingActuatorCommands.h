// Generated by gencpp from file pamplemousse_actuators/wingActuatorCommands.msg
// DO NOT EDIT!


#ifndef PAMPLEMOUSSE_ACTUATORS_MESSAGE_WINGACTUATORCOMMANDS_H
#define PAMPLEMOUSSE_ACTUATORS_MESSAGE_WINGACTUATORCOMMANDS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace pamplemousse_actuators
{
template <class ContainerAllocator>
struct wingActuatorCommands_
{
  typedef wingActuatorCommands_<ContainerAllocator> Type;

  wingActuatorCommands_()
    : header()
    , controlword(0)
    , target_position(0)  {
    }
  wingActuatorCommands_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , controlword(0)
    , target_position(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint16_t _controlword_type;
  _controlword_type controlword;

   typedef int32_t _target_position_type;
  _target_position_type target_position;





  typedef boost::shared_ptr< ::pamplemousse_actuators::wingActuatorCommands_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pamplemousse_actuators::wingActuatorCommands_<ContainerAllocator> const> ConstPtr;

}; // struct wingActuatorCommands_

typedef ::pamplemousse_actuators::wingActuatorCommands_<std::allocator<void> > wingActuatorCommands;

typedef boost::shared_ptr< ::pamplemousse_actuators::wingActuatorCommands > wingActuatorCommandsPtr;
typedef boost::shared_ptr< ::pamplemousse_actuators::wingActuatorCommands const> wingActuatorCommandsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pamplemousse_actuators::wingActuatorCommands_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pamplemousse_actuators::wingActuatorCommands_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pamplemousse_actuators::wingActuatorCommands_<ContainerAllocator1> & lhs, const ::pamplemousse_actuators::wingActuatorCommands_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.controlword == rhs.controlword &&
    lhs.target_position == rhs.target_position;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pamplemousse_actuators::wingActuatorCommands_<ContainerAllocator1> & lhs, const ::pamplemousse_actuators::wingActuatorCommands_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pamplemousse_actuators

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::pamplemousse_actuators::wingActuatorCommands_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pamplemousse_actuators::wingActuatorCommands_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pamplemousse_actuators::wingActuatorCommands_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pamplemousse_actuators::wingActuatorCommands_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pamplemousse_actuators::wingActuatorCommands_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pamplemousse_actuators::wingActuatorCommands_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pamplemousse_actuators::wingActuatorCommands_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b1d763f711c35795d466da4ed513c9a2";
  }

  static const char* value(const ::pamplemousse_actuators::wingActuatorCommands_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb1d763f711c35795ULL;
  static const uint64_t static_value2 = 0xd466da4ed513c9a2ULL;
};

template<class ContainerAllocator>
struct DataType< ::pamplemousse_actuators::wingActuatorCommands_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pamplemousse_actuators/wingActuatorCommands";
  }

  static const char* value(const ::pamplemousse_actuators::wingActuatorCommands_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pamplemousse_actuators::wingActuatorCommands_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# wingCommands.msg\n"
"# \n"
"# This message holds commands for a single wing actuator.\n"
"Header header\n"
"\n"
"# 6040h Controlword\n"
"# This object controls the CiA 402 Power State Machine\n"
"uint16 controlword\n"
"\n"
"# 607Ah Target Position\n"
"# This object specifies the target position in user-defined units for the Profile\n"
"# Position and Cyclic Synchronous modes.\n"
"int32 target_position\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::pamplemousse_actuators::wingActuatorCommands_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pamplemousse_actuators::wingActuatorCommands_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.controlword);
      stream.next(m.target_position);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct wingActuatorCommands_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pamplemousse_actuators::wingActuatorCommands_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pamplemousse_actuators::wingActuatorCommands_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "controlword: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.controlword);
    s << indent << "target_position: ";
    Printer<int32_t>::stream(s, indent + "  ", v.target_position);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PAMPLEMOUSSE_ACTUATORS_MESSAGE_WINGACTUATORCOMMANDS_H