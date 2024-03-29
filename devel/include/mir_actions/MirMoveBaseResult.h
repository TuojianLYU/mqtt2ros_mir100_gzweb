// Generated by gencpp from file mir_actions/MirMoveBaseResult.msg
// DO NOT EDIT!


#ifndef MIR_ACTIONS_MESSAGE_MIRMOVEBASERESULT_H
#define MIR_ACTIONS_MESSAGE_MIRMOVEBASERESULT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/Pose2D.h>

namespace mir_actions
{
template <class ContainerAllocator>
struct MirMoveBaseResult_
{
  typedef MirMoveBaseResult_<ContainerAllocator> Type;

  MirMoveBaseResult_()
    : end_state(0)
    , end_pose()
    , pose()
    , message()  {
    }
  MirMoveBaseResult_(const ContainerAllocator& _alloc)
    : end_state(0)
    , end_pose(_alloc)
    , pose(_alloc)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef int16_t _end_state_type;
  _end_state_type end_state;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _end_pose_type;
  _end_pose_type end_pose;

   typedef  ::geometry_msgs::Pose2D_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _message_type;
  _message_type message;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(UNDEFINED)
  #undef UNDEFINED
#endif
#if defined(_WIN32) && defined(GOAL_REACHED)
  #undef GOAL_REACHED
#endif
#if defined(_WIN32) && defined(FAILED)
  #undef FAILED
#endif
#if defined(_WIN32) && defined(MARKER_VISIBLE)
  #undef MARKER_VISIBLE
#endif
#if defined(_WIN32) && defined(FAILED_NO_PATH)
  #undef FAILED_NO_PATH
#endif
#if defined(_WIN32) && defined(FAILED_GOAL_IN_STATIC_OBSTACLE)
  #undef FAILED_GOAL_IN_STATIC_OBSTACLE
#endif
#if defined(_WIN32) && defined(FAILED_GOAL_IN_FORBIDDEN_AREA)
  #undef FAILED_GOAL_IN_FORBIDDEN_AREA
#endif
#if defined(_WIN32) && defined(FAILED_GOAL_IN_DYNAMIC_OBSTACLE)
  #undef FAILED_GOAL_IN_DYNAMIC_OBSTACLE
#endif
#if defined(_WIN32) && defined(FAILED_ROBOT_IN_COLLISION)
  #undef FAILED_ROBOT_IN_COLLISION
#endif
#if defined(_WIN32) && defined(FAILED_ROBOT_IN_FORBIDDEN_AREA)
  #undef FAILED_ROBOT_IN_FORBIDDEN_AREA
#endif
#if defined(_WIN32) && defined(FAILED_UNKNOWN_TRAILER)
  #undef FAILED_UNKNOWN_TRAILER
#endif
#if defined(_WIN32) && defined(FAILED_TO_PASS_GLOBAL_PLAN)
  #undef FAILED_TO_PASS_GLOBAL_PLAN
#endif
#if defined(_WIN32) && defined(FAILED_NO_VALID_RECOVERY_CONTROL)
  #undef FAILED_NO_VALID_RECOVERY_CONTROL
#endif
#if defined(_WIN32) && defined(FAILED_UNKNOWN_PLANNER_ERROR)
  #undef FAILED_UNKNOWN_PLANNER_ERROR
#endif
#if defined(_WIN32) && defined(FAILED_ROBOT_OSCILLATING)
  #undef FAILED_ROBOT_OSCILLATING
#endif
#if defined(_WIN32) && defined(FAILED_SOFTWARE_ERROR)
  #undef FAILED_SOFTWARE_ERROR
#endif
#if defined(_WIN32) && defined(FAILED_TIMEOUT)
  #undef FAILED_TIMEOUT
#endif
#if defined(_WIN32) && defined(FAILED_COLLISION)
  #undef FAILED_COLLISION
#endif
#if defined(_WIN32) && defined(INVALID_GOAL)
  #undef INVALID_GOAL
#endif
#if defined(_WIN32) && defined(FAILED_MARKER_TRACKING_ERROR)
  #undef FAILED_MARKER_TRACKING_ERROR
#endif

  enum {
    UNDEFINED = 0,
    GOAL_REACHED = 1,
    FAILED = -1,
    MARKER_VISIBLE = 2,
    FAILED_NO_PATH = -2,
    FAILED_GOAL_IN_STATIC_OBSTACLE = -3,
    FAILED_GOAL_IN_FORBIDDEN_AREA = -4,
    FAILED_GOAL_IN_DYNAMIC_OBSTACLE = -5,
    FAILED_ROBOT_IN_COLLISION = -6,
    FAILED_ROBOT_IN_FORBIDDEN_AREA = -7,
    FAILED_UNKNOWN_TRAILER = -8,
    FAILED_TO_PASS_GLOBAL_PLAN = -9,
    FAILED_NO_VALID_RECOVERY_CONTROL = -10,
    FAILED_UNKNOWN_PLANNER_ERROR = -11,
    FAILED_ROBOT_OSCILLATING = -12,
    FAILED_SOFTWARE_ERROR = -13,
    FAILED_TIMEOUT = -14,
    FAILED_COLLISION = -15,
    INVALID_GOAL = -16,
    FAILED_MARKER_TRACKING_ERROR = -17,
  };


  typedef boost::shared_ptr< ::mir_actions::MirMoveBaseResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mir_actions::MirMoveBaseResult_<ContainerAllocator> const> ConstPtr;

}; // struct MirMoveBaseResult_

typedef ::mir_actions::MirMoveBaseResult_<std::allocator<void> > MirMoveBaseResult;

typedef boost::shared_ptr< ::mir_actions::MirMoveBaseResult > MirMoveBaseResultPtr;
typedef boost::shared_ptr< ::mir_actions::MirMoveBaseResult const> MirMoveBaseResultConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mir_actions::MirMoveBaseResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mir_actions::MirMoveBaseResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mir_actions::MirMoveBaseResult_<ContainerAllocator1> & lhs, const ::mir_actions::MirMoveBaseResult_<ContainerAllocator2> & rhs)
{
  return lhs.end_state == rhs.end_state &&
    lhs.end_pose == rhs.end_pose &&
    lhs.pose == rhs.pose &&
    lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mir_actions::MirMoveBaseResult_<ContainerAllocator1> & lhs, const ::mir_actions::MirMoveBaseResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mir_actions

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mir_actions::MirMoveBaseResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mir_actions::MirMoveBaseResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_actions::MirMoveBaseResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_actions::MirMoveBaseResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_actions::MirMoveBaseResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_actions::MirMoveBaseResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mir_actions::MirMoveBaseResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e54c1567292aca96a9941233d552b908";
  }

  static const char* value(const ::mir_actions::MirMoveBaseResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe54c1567292aca96ULL;
  static const uint64_t static_value2 = 0xa9941233d552b908ULL;
};

template<class ContainerAllocator>
struct DataType< ::mir_actions::MirMoveBaseResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mir_actions/MirMoveBaseResult";
  }

  static const char* value(const ::mir_actions::MirMoveBaseResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mir_actions::MirMoveBaseResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#result definition\n"
"\n"
"#shared states\n"
"int16 UNDEFINED = 0\n"
"int16 GOAL_REACHED = 1\n"
"int16 FAILED = -1\n"
"\n"
"#global move states\n"
"int16 MARKER_VISIBLE = 2\n"
"int16 FAILED_NO_PATH = -2\n"
"int16 FAILED_GOAL_IN_STATIC_OBSTACLE = -3\n"
"int16 FAILED_GOAL_IN_FORBIDDEN_AREA = -4\n"
"int16 FAILED_GOAL_IN_DYNAMIC_OBSTACLE = -5\n"
"int16 FAILED_ROBOT_IN_COLLISION = -6\n"
"int16 FAILED_ROBOT_IN_FORBIDDEN_AREA = -7\n"
"int16 FAILED_UNKNOWN_TRAILER = -8\n"
"int16 FAILED_TO_PASS_GLOBAL_PLAN = -9\n"
"int16 FAILED_NO_VALID_RECOVERY_CONTROL = -10\n"
"int16 FAILED_UNKNOWN_PLANNER_ERROR = -11\n"
"int16 FAILED_ROBOT_OSCILLATING = -12\n"
"int16 FAILED_SOFTWARE_ERROR = -13\n"
"\n"
"#relative move states\n"
"int16 FAILED_TIMEOUT = -14\n"
"int16 FAILED_COLLISION = -15\n"
"int16 INVALID_GOAL = -16\n"
"\n"
"#docking move states\n"
"int16 FAILED_MARKER_TRACKING_ERROR = -17\n"
"\n"
"#shared results\n"
"int16 end_state\n"
"geometry_msgs/PoseStamped end_pose\n"
"\n"
"#docking results\n"
"geometry_msgs/Pose2D pose\n"
"\n"
"#feedback for UI\n"
"string message\n"
"\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
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
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose2D\n"
"# Deprecated\n"
"# Please use the full 3D pose.\n"
"\n"
"# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.\n"
"\n"
"# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.\n"
"\n"
"\n"
"# This expresses a position and orientation on a 2D manifold.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 theta\n"
;
  }

  static const char* value(const ::mir_actions::MirMoveBaseResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mir_actions::MirMoveBaseResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.end_state);
      stream.next(m.end_pose);
      stream.next(m.pose);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MirMoveBaseResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mir_actions::MirMoveBaseResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mir_actions::MirMoveBaseResult_<ContainerAllocator>& v)
  {
    s << indent << "end_state: ";
    Printer<int16_t>::stream(s, indent + "  ", v.end_state);
    s << indent << "end_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.end_pose);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose2D_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MIR_ACTIONS_MESSAGE_MIRMOVEBASERESULT_H
