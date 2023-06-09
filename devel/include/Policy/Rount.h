// Generated by gencpp from file Policy/Rount.msg
// DO NOT EDIT!


#ifndef POLICY_MESSAGE_ROUNT_H
#define POLICY_MESSAGE_ROUNT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace Policy
{
template <class ContainerAllocator>
struct Rount_
{
  typedef Rount_<ContainerAllocator> Type;

  Rount_()
    : road()
    , roadNo()
    , len1(0)
    , len2(0)  {
    }
  Rount_(const ContainerAllocator& _alloc)
    : road(_alloc)
    , roadNo(_alloc)
    , len1(0)
    , len2(0)  {
  (void)_alloc;
    }



   typedef std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  _road_type;
  _road_type road;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _roadNo_type;
  _roadNo_type roadNo;

   typedef int32_t _len1_type;
  _len1_type len1;

   typedef int32_t _len2_type;
  _len2_type len2;





  typedef boost::shared_ptr< ::Policy::Rount_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::Policy::Rount_<ContainerAllocator> const> ConstPtr;

}; // struct Rount_

typedef ::Policy::Rount_<std::allocator<void> > Rount;

typedef boost::shared_ptr< ::Policy::Rount > RountPtr;
typedef boost::shared_ptr< ::Policy::Rount const> RountConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::Policy::Rount_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::Policy::Rount_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::Policy::Rount_<ContainerAllocator1> & lhs, const ::Policy::Rount_<ContainerAllocator2> & rhs)
{
  return lhs.road == rhs.road &&
    lhs.roadNo == rhs.roadNo &&
    lhs.len1 == rhs.len1 &&
    lhs.len2 == rhs.len2;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::Policy::Rount_<ContainerAllocator1> & lhs, const ::Policy::Rount_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace Policy

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::Policy::Rount_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::Policy::Rount_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::Policy::Rount_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::Policy::Rount_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::Policy::Rount_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::Policy::Rount_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::Policy::Rount_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f90ce80309ad83c278c5c01cd0830b90";
  }

  static const char* value(const ::Policy::Rount_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf90ce80309ad83c2ULL;
  static const uint64_t static_value2 = 0x78c5c01cd0830b90ULL;
};

template<class ContainerAllocator>
struct DataType< ::Policy::Rount_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Policy/Rount";
  }

  static const char* value(const ::Policy::Rount_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::Policy::Rount_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32[] road\n"
"string[] roadNo\n"
"int32 len1\n"
"int32 len2\n"
"# vector<int32> road\n"
;
  }

  static const char* value(const ::Policy::Rount_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::Policy::Rount_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.road);
      stream.next(m.roadNo);
      stream.next(m.len1);
      stream.next(m.len2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Rount_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::Policy::Rount_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::Policy::Rount_<ContainerAllocator>& v)
  {
    s << indent << "road[]" << std::endl;
    for (size_t i = 0; i < v.road.size(); ++i)
    {
      s << indent << "  road[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.road[i]);
    }
    s << indent << "roadNo[]" << std::endl;
    for (size_t i = 0; i < v.roadNo.size(); ++i)
    {
      s << indent << "  roadNo[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.roadNo[i]);
    }
    s << indent << "len1: ";
    Printer<int32_t>::stream(s, indent + "  ", v.len1);
    s << indent << "len2: ";
    Printer<int32_t>::stream(s, indent + "  ", v.len2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // POLICY_MESSAGE_ROUNT_H
