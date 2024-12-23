# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.6)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6...3.20)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget velodyne_pointcloud::velodyne_cloud_types velodyne_pointcloud::velodyne_rawdata velodyne_pointcloud::transform)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Compute the installation prefix relative to this file.
get_filename_component(_IMPORT_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
if(_IMPORT_PREFIX STREQUAL "/")
  set(_IMPORT_PREFIX "")
endif()

# Create imported target velodyne_pointcloud::velodyne_cloud_types
add_library(velodyne_pointcloud::velodyne_cloud_types SHARED IMPORTED)

set_target_properties(velodyne_pointcloud::velodyne_cloud_types PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/velodyne_pointcloud"
  INTERFACE_LINK_LIBRARIES "Eigen3::Eigen;pcl_common;Boost::system;Boost::filesystem;Boost::date_time;Boost::iostreams;Boost::serialization;rclcpp::rclcpp;sensor_msgs::sensor_msgs__rosidl_generator_c;sensor_msgs::sensor_msgs__rosidl_typesupport_fastrtps_c;sensor_msgs::sensor_msgs__rosidl_generator_cpp;sensor_msgs::sensor_msgs__rosidl_typesupport_fastrtps_cpp;sensor_msgs::sensor_msgs__rosidl_typesupport_introspection_c;sensor_msgs::sensor_msgs__rosidl_typesupport_c;sensor_msgs::sensor_msgs__rosidl_typesupport_introspection_cpp;sensor_msgs::sensor_msgs__rosidl_typesupport_cpp;sensor_msgs::sensor_msgs__rosidl_generator_py;sensor_msgs::sensor_msgs_library;tf2_ros::tf2_ros;velodyne_msgs::velodyne_msgs__rosidl_generator_c;velodyne_msgs::velodyne_msgs__rosidl_typesupport_fastrtps_c;velodyne_msgs::velodyne_msgs__rosidl_generator_cpp;velodyne_msgs::velodyne_msgs__rosidl_typesupport_fastrtps_cpp;velodyne_msgs::velodyne_msgs__rosidl_typesupport_introspection_c;velodyne_msgs::velodyne_msgs__rosidl_typesupport_c;velodyne_msgs::velodyne_msgs__rosidl_typesupport_introspection_cpp;velodyne_msgs::velodyne_msgs__rosidl_typesupport_cpp;velodyne_msgs::velodyne_msgs__rosidl_generator_py"
)

# Create imported target velodyne_pointcloud::velodyne_rawdata
add_library(velodyne_pointcloud::velodyne_rawdata SHARED IMPORTED)

set_target_properties(velodyne_pointcloud::velodyne_rawdata PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/velodyne_pointcloud"
  INTERFACE_LINK_LIBRARIES "angles::angles;Eigen3::Eigen;geometry_msgs::geometry_msgs__rosidl_generator_c;geometry_msgs::geometry_msgs__rosidl_typesupport_fastrtps_c;geometry_msgs::geometry_msgs__rosidl_typesupport_introspection_c;geometry_msgs::geometry_msgs__rosidl_typesupport_c;geometry_msgs::geometry_msgs__rosidl_generator_cpp;geometry_msgs::geometry_msgs__rosidl_typesupport_fastrtps_cpp;geometry_msgs::geometry_msgs__rosidl_typesupport_introspection_cpp;geometry_msgs::geometry_msgs__rosidl_typesupport_cpp;geometry_msgs::geometry_msgs__rosidl_generator_py;pcl_common;Boost::system;Boost::filesystem;Boost::date_time;Boost::iostreams;Boost::serialization;rclcpp::rclcpp;sensor_msgs::sensor_msgs__rosidl_generator_c;sensor_msgs::sensor_msgs__rosidl_typesupport_fastrtps_c;sensor_msgs::sensor_msgs__rosidl_generator_cpp;sensor_msgs::sensor_msgs__rosidl_typesupport_fastrtps_cpp;sensor_msgs::sensor_msgs__rosidl_typesupport_introspection_c;sensor_msgs::sensor_msgs__rosidl_typesupport_c;sensor_msgs::sensor_msgs__rosidl_typesupport_introspection_cpp;sensor_msgs::sensor_msgs__rosidl_typesupport_cpp;sensor_msgs::sensor_msgs__rosidl_generator_py;sensor_msgs::sensor_msgs_library;tf2::tf2;tf2_ros::tf2_ros;velodyne_msgs::velodyne_msgs__rosidl_generator_c;velodyne_msgs::velodyne_msgs__rosidl_typesupport_fastrtps_c;velodyne_msgs::velodyne_msgs__rosidl_generator_cpp;velodyne_msgs::velodyne_msgs__rosidl_typesupport_fastrtps_cpp;velodyne_msgs::velodyne_msgs__rosidl_typesupport_introspection_c;velodyne_msgs::velodyne_msgs__rosidl_typesupport_c;velodyne_msgs::velodyne_msgs__rosidl_typesupport_introspection_cpp;velodyne_msgs::velodyne_msgs__rosidl_typesupport_cpp;velodyne_msgs::velodyne_msgs__rosidl_generator_py;yaml-cpp"
)

# Create imported target velodyne_pointcloud::transform
add_library(velodyne_pointcloud::transform SHARED IMPORTED)

set_target_properties(velodyne_pointcloud::transform PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include/velodyne_pointcloud"
  INTERFACE_LINK_LIBRARIES "diagnostic_updater::diagnostic_updater;Eigen3::Eigen;message_filters::message_filters;rclcpp::rclcpp;tf2::tf2;tf2_ros::tf2_ros;velodyne_pointcloud::velodyne_cloud_types;velodyne_pointcloud::velodyne_rawdata;yaml-cpp"
)

if(CMAKE_VERSION VERSION_LESS 2.8.12)
  message(FATAL_ERROR "This file relies on consumers using CMake 2.8.12 or greater.")
endif()

# Load information for each installed configuration.
get_filename_component(_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
file(GLOB CONFIG_FILES "${_DIR}/velodyne_pointcloudExport-*.cmake")
foreach(f ${CONFIG_FILES})
  include(${f})
endforeach()

# Cleanup temporary variables.
set(_IMPORT_PREFIX)

# Loop over all imported files and verify that they actually exist
foreach(target ${_IMPORT_CHECK_TARGETS} )
  foreach(file ${_IMPORT_CHECK_FILES_FOR_${target}} )
    if(NOT EXISTS "${file}" )
      message(FATAL_ERROR "The imported target \"${target}\" references the file
   \"${file}\"
but this file does not exist.  Possible reasons include:
* The file was deleted, renamed, or moved to another location.
* An install or uninstall procedure did not complete successfully.
* The installation package was faulty and contained
   \"${CMAKE_CURRENT_LIST_FILE}\"
but not all the files it references.
")
    endif()
  endforeach()
  unset(_IMPORT_CHECK_FILES_FOR_${target})
endforeach()
unset(_IMPORT_CHECK_TARGETS)

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)