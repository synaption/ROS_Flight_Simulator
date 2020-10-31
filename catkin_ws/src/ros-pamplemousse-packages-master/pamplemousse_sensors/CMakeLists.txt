cmake_minimum_required(VERSION 2.8.3)
project(pamplemousse_sensors)

add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
  spatial_ros
)

find_package(Boost REQUIRED)

add_message_files(
  FILES
  filterStatus.msg
  systemStatus.msg
  SpatialState.msg
)

generate_messages(DEPENDENCIES std_msgs)

catkin_package(CATKIN_DEPENDS message_runtime std_msgs)

include_directories(include  ${catkin_INCLUDE_DIRS})

add_executable(spatial_node src/spatial_node.cpp)
add_executable(listener src/listener.cpp)

target_link_libraries(spatial_node ${catkin_LIBRARIES})
target_link_libraries(listener ${catkin_LIBRARIES})

add_dependencies(
  spatial_node
  ${catkin_EXPORTED_TARGETS}
  ${${PROJECT_NAME}_EXPORT_TARGETS}
)
add_dependencies (
  listener
  ${catkin_EXPORTED_TARGETS}
  ${${PROJECT_NAME}_EXPORT_TARGETS}
)
