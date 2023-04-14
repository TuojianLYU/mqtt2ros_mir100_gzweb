// Generated by gencpp from file mir_msgs/ServiceResponseHeader.msg
// DO NOT EDIT!


#ifndef MIR_MSGS_MESSAGE_SERVICERESPONSEHEADER_H
#define MIR_MSGS_MESSAGE_SERVICERESPONSEHEADER_H


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
struct ServiceResponseHeader_
{
  typedef ServiceResponseHeader_<ContainerAllocator> Type;

  ServiceResponseHeader_()
    : success(false)
    , error()  {
    }
  ServiceResponseHeader_(const ContainerAllocator& _alloc)
    : success(false)
    , error(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _error_type;
  _error_type error;





  typedef boost::shared_ptr< ::mir_msgs::ServiceResponseHeader_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mir_msgs::ServiceResponseHeader_<ContainerAllocator> const> ConstPtr;

}; // struct ServiceResponseHeader_

typedef ::mir_msgs::ServiceResponseHeader_<std::allocator<void> > ServiceResponseHeader;

typedef boost::shared_ptr< ::mir_msgs::ServiceResponseHeader > ServiceResponseHeaderPtr;
typedef boost::shared_ptr< ::mir_msgs::ServiceResponseHeader const> ServiceResponseHeaderConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mir_msgs::ServiceResponseHeader_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mir_msgs::ServiceResponseHeader_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mir_msgs::ServiceResponseHeader_<ContainerAllocator1> & lhs, const ::mir_msgs::ServiceResponseHeader_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success &&
    lhs.error == rhs.error;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mir_msgs::ServiceResponseHeader_<ContainerAllocator1> & lhs, const ::mir_msgs::ServiceResponseHeader_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mir_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::ServiceResponseHeader_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::ServiceResponseHeader_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::ServiceResponseHeader_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::ServiceResponseHeader_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::ServiceResponseHeader_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::ServiceResponseHeader_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mir_msgs::ServiceResponseHeader_<ContainerAllocator> >
{
  static const char* value()
  {
    return "45872d25d65c97743cc71afc6d4e884d";
  }

  static const char* value(const ::mir_msgs::ServiceResponseHeader_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x45872d25d65c9774ULL;
  static const uint64_t static_value2 = 0x3cc71afc6d4e884dULL;
};

template<class ContainerAllocator>
struct DataType< ::mir_msgs::ServiceResponseHeader_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mir_msgs/ServiceResponseHeader";
  }

  static const char* value(const ::mir_msgs::ServiceResponseHeader_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mir_msgs::ServiceResponseHeader_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
"string error\n"
;
  }

  static const char* value(const ::mir_msgs::ServiceResponseHeader_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mir_msgs::ServiceResponseHeader_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.error);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ServiceResponseHeader_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mir_msgs::ServiceResponseHeader_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mir_msgs::ServiceResponseHeader_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "error: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.error);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MIR_MSGS_MESSAGE_SERVICERESPONSEHEADER_H