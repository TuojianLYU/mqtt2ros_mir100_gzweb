// Generated by gencpp from file mir_msgs/RobotMode.msg
// DO NOT EDIT!


#ifndef MIR_MSGS_MESSAGE_ROBOTMODE_H
#define MIR_MSGS_MESSAGE_ROBOTMODE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mir_msgs
{
template <class ContainerAllocator>
struct RobotMode_
{
  typedef RobotMode_<ContainerAllocator> Type;

  RobotMode_()
    : robotMode(0)
    , robotModeString()  {
    }
  RobotMode_(const ContainerAllocator& _alloc)
    : robotMode(0)
    , robotModeString(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _robotMode_type;
  _robotMode_type robotMode;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _robotModeString_type;
  _robotModeString_type robotModeString;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(ROBOT_MODE_NONE)
  #undef ROBOT_MODE_NONE
#endif
#if defined(_WIN32) && defined(ROBOT_MODE_MAPPING)
  #undef ROBOT_MODE_MAPPING
#endif
#if defined(_WIN32) && defined(ROBOT_MODE_MAPPING_FINALIZING)
  #undef ROBOT_MODE_MAPPING_FINALIZING
#endif
#if defined(_WIN32) && defined(ROBOT_MODE_MISSION)
  #undef ROBOT_MODE_MISSION
#endif
#if defined(_WIN32) && defined(ROBOT_MODE_CHANGING)
  #undef ROBOT_MODE_CHANGING
#endif

  enum {
    ROBOT_MODE_NONE = 0u,
    ROBOT_MODE_MAPPING = 3u,
    ROBOT_MODE_MAPPING_FINALIZING = 4u,
    ROBOT_MODE_MISSION = 7u,
    ROBOT_MODE_CHANGING = 255u,
  };


  typedef boost::shared_ptr< ::mir_msgs::RobotMode_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mir_msgs::RobotMode_<ContainerAllocator> const> ConstPtr;

}; // struct RobotMode_

typedef ::mir_msgs::RobotMode_<std::allocator<void> > RobotMode;

typedef boost::shared_ptr< ::mir_msgs::RobotMode > RobotModePtr;
typedef boost::shared_ptr< ::mir_msgs::RobotMode const> RobotModeConstPtr;

// constants requiring out of line definition

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mir_msgs::RobotMode_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mir_msgs::RobotMode_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mir_msgs::RobotMode_<ContainerAllocator1> & lhs, const ::mir_msgs::RobotMode_<ContainerAllocator2> & rhs)
{
  return lhs.robotMode == rhs.robotMode &&
    lhs.robotModeString == rhs.robotModeString;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mir_msgs::RobotMode_<ContainerAllocator1> & lhs, const ::mir_msgs::RobotMode_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mir_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::RobotMode_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::RobotMode_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::RobotMode_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::RobotMode_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::RobotMode_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::RobotMode_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mir_msgs::RobotMode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "83997edb962e309b1fa6bf5dbbc95591";
  }

  static const char* value(const ::mir_msgs::RobotMode_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x83997edb962e309bULL;
  static const uint64_t static_value2 = 0x1fa6bf5dbbc95591ULL;
};

template<class ContainerAllocator>
struct DataType< ::mir_msgs::RobotMode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mir_msgs/RobotMode";
  }

  static const char* value(const ::mir_msgs::RobotMode_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mir_msgs::RobotMode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# The robot operates in different mode\n"
"uint8 ROBOT_MODE_NONE = 0		# start mode\n"
"uint8 ROBOT_MODE_MAPPING = 3		# in mapping a new map is made\n"
"uint8 ROBOT_MODE_MAPPING_FINALIZING = 4		# in mapping the recorded map is being finalised\n"
"uint8 ROBOT_MODE_MISSION = 7		# primary mode when executing a mission (action list)\n"
"uint8 ROBOT_MODE_CHANGING = 255		# a transition mode - to say that a transition is in progress\n"
"\n"
"uint8 robotMode\n"
"string robotModeString\n"
;
  }

  static const char* value(const ::mir_msgs::RobotMode_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mir_msgs::RobotMode_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.robotMode);
      stream.next(m.robotModeString);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RobotMode_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mir_msgs::RobotMode_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mir_msgs::RobotMode_<ContainerAllocator>& v)
  {
    s << indent << "robotMode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.robotMode);
    s << indent << "robotModeString: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.robotModeString);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MIR_MSGS_MESSAGE_ROBOTMODE_H
