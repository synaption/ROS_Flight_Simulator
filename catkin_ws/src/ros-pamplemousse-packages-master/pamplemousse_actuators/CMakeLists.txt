cmake_minimum_required(VERSION 3.10.2)
project(pamplemousse_actuators)

add_compile_options(-std=c++14)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
)

add_message_files(
    FILES
    wingActuatorStates.msg
    wingActuatorCommands.msg
)

generate_messages(DEPENDENCIES std_msgs)

include_directories(include REQUIRED
                    ${catkin_INCLUDE_DIRS})

catkin_package(CATKIN_DEPENDS
               message_runtime
               std_msgs)

add_executable(wing_control_node src/wingControl.cpp)

target_link_libraries(wing_control_node
                      ${catkin_LIBRARIES})

add_dependencies(
    wing_control_node
    ${${PROJECT_NAME}_EXPORT_TARGETS}
    ${catkin_EXPORTED_TARGETS}
    pamplemousse_actuators_generate_messages_cpp
)
