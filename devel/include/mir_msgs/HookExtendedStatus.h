// Generated by gencpp from file mir_msgs/HookExtendedStatus.msg
// DO NOT EDIT!


#ifndef MIR_MSGS_MESSAGE_HOOKEXTENDEDSTATUS_H
#define MIR_MSGS_MESSAGE_HOOKEXTENDEDSTATUS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <mir_msgs/BrakeState.h>
#include <mir_msgs/GripperState.h>
#include <mir_msgs/HeightState.h>

namespace mir_msgs
{
template <class ContainerAllocator>
struct HookExtendedStatus_
{
  typedef HookExtendedStatus_<ContainerAllocator> Type;

  HookExtendedStatus_()
    : available(false)
    , brake()
    , gripper()
    , height()
    , angle(0.0)
    , qr_marker_name()  {
    }
  HookExtendedStatus_(const ContainerAllocator& _alloc)
    : available(false)
    , brake(_alloc)
    , gripper(_alloc)
    , height(_alloc)
    , angle(0.0)
    , qr_marker_name(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _available_type;
  _available_type available;

   typedef  ::mir_msgs::BrakeState_<ContainerAllocator>  _brake_type;
  _brake_type brake;

   typedef  ::mir_msgs::GripperState_<ContainerAllocator>  _gripper_type;
  _gripper_type gripper;

   typedef  ::mir_msgs::HeightState_<ContainerAllocator>  _height_type;
  _height_type height;

   typedef float _angle_type;
  _angle_type angle;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _qr_marker_name_type;
  _qr_marker_name_type qr_marker_name;





  typedef boost::shared_ptr< ::mir_msgs::HookExtendedStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mir_msgs::HookExtendedStatus_<ContainerAllocator> const> ConstPtr;

}; // struct HookExtendedStatus_

typedef ::mir_msgs::HookExtendedStatus_<std::allocator<void> > HookExtendedStatus;

typedef boost::shared_ptr< ::mir_msgs::HookExtendedStatus > HookExtendedStatusPtr;
typedef boost::shared_ptr< ::mir_msgs::HookExtendedStatus const> HookExtendedStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mir_msgs::HookExtendedStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mir_msgs::HookExtendedStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mir_msgs::HookExtendedStatus_<ContainerAllocator1> & lhs, const ::mir_msgs::HookExtendedStatus_<ContainerAllocator2> & rhs)
{
  return lhs.available == rhs.available &&
    lhs.brake == rhs.brake &&
    lhs.gripper == rhs.gripper &&
    lhs.height == rhs.height &&
    lhs.angle == rhs.angle &&
    lhs.qr_marker_name == rhs.qr_marker_name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mir_msgs::HookExtendedStatus_<ContainerAllocator1> & lhs, const ::mir_msgs::HookExtendedStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mir_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::HookExtendedStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::HookExtendedStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::HookExtendedStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::HookExtendedStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::HookExtendedStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::HookExtendedStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mir_msgs::HookExtendedStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7a4c65a73248ad57ddff2231bb564f0d";
  }

  static const char* value(const ::mir_msgs::HookExtendedStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7a4c65a73248ad57ULL;
  static const uint64_t static_value2 = 0xddff2231bb564f0dULL;
};

template<class ContainerAllocator>
struct DataType< ::mir_msgs::HookExtendedStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mir_msgs/HookExtendedStatus";
  }

  static const char* value(const ::mir_msgs::HookExtendedStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mir_msgs::HookExtendedStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool available\n"
"\n"
"BrakeState brake\n"
"\n"
"GripperState gripper\n"
"\n"
"HeightState height\n"
"\n"
"float32 angle\n"
"\n"
"string qr_marker_name\n"
"\n"
"================================================================================\n"
"MSG: mir_msgs/BrakeState\n"
"uint8 UNKNOWN = 0\n"
"uint8 INITIALIZING = 1\n"
"uint8 HOMING = 2\n"
"uint8 ACTIVE = 3\n"
"uint8 INACTIVE = 4\n"
"uint8 ACTIVATING = 5\n"
"uint8 DEACTIVATING = 6\n"
"uint8 ERROR = 7\n"
"\n"
"uint8 state\n"
"\n"
"================================================================================\n"
"MSG: mir_msgs/GripperState\n"
"uint8 LOCK_UNKNOWN = 0\n"
"uint8 LOCK_HOMING = 1\n"
"uint8 LOCK_OPEN = 2\n"
"uint8 LOCK_OPENING = 3\n"
"uint8 LOCK_CLOSED = 4\n"
"uint8 LOCK_CLOSING = 6\n"
"uint8 LOCK_ERROR = 9\n"
"\n"
"uint8 state\n"
"\n"
"================================================================================\n"
"MSG: mir_msgs/HeightState\n"
"uint8 HEIGHT_UNKNOWN = 0\n"
"uint8 HEIGHT_HOMING = 1\n"
"uint8 HEIGHT_IDLE = 2\n"
"uint8 HEIGHT_CHANGING = 3\n"
"uint8 HEIGHT_ERROR = 4\n"
"\n"
"uint8 state\n"
;
  }

  static const char* value(const ::mir_msgs::HookExtendedStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mir_msgs::HookExtendedStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.available);
      stream.next(m.brake);
      stream.next(m.gripper);
      stream.next(m.height);
      stream.next(m.angle);
      stream.next(m.qr_marker_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HookExtendedStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mir_msgs::HookExtendedStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mir_msgs::HookExtendedStatus_<ContainerAllocator>& v)
  {
    s << indent << "available: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.available);
    s << indent << "brake: ";
    s << std::endl;
    Printer< ::mir_msgs::BrakeState_<ContainerAllocator> >::stream(s, indent + "  ", v.brake);
    s << indent << "gripper: ";
    s << std::endl;
    Printer< ::mir_msgs::GripperState_<ContainerAllocator> >::stream(s, indent + "  ", v.gripper);
    s << indent << "height: ";
    s << std::endl;
    Printer< ::mir_msgs::HeightState_<ContainerAllocator> >::stream(s, indent + "  ", v.height);
    s << indent << "angle: ";
    Printer<float>::stream(s, indent + "  ", v.angle);
    s << indent << "qr_marker_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.qr_marker_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MIR_MSGS_MESSAGE_HOOKEXTENDEDSTATUS_H
