# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pamplemousse_actuators: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ipamplemousse_actuators:/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_actuators/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pamplemousse_actuators_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_actuators/msg/wingActuatorCommands.msg" NAME_WE)
add_custom_target(_pamplemousse_actuators_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pamplemousse_actuators" "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_actuators/msg/wingActuatorCommands.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_actuators/msg/wingActuatorStates.msg" NAME_WE)
add_custom_target(_pamplemousse_actuators_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pamplemousse_actuators" "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_actuators/msg/wingActuatorStates.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pamplemousse_actuators
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_actuators/msg/wingActuatorCommands.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pamplemousse_actuators
)
_generate_msg_cpp(pamplemousse_actuators
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_actuators/msg/wingActuatorStates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pamplemousse_actuators
)

### Generating Services

### Generating Module File
_generate_module_cpp(pamplemousse_actuators
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pamplemousse_actuators
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pamplemousse_actuators_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pamplemousse_actuators_generate_messages pamplemousse_actuators_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_actuators/msg/wingActuatorCommands.msg" NAME_WE)
add_dependencies(pamplemousse_actuators_generate_messages_cpp _pamplemousse_actuators_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_actuators/msg/wingActuatorStates.msg" NAME_WE)
add_dependencies(pamplemousse_actuators_generate_messages_cpp _pamplemousse_actuators_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pamplemousse_actuators_gencpp)
add_dependencies(pamplemousse_actuators_gencpp pamplemousse_actuators_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pamplemousse_actuators_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(pamplemousse_actuators
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_actuators/msg/wingActuatorCommands.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pamplemousse_actuators
)
_generate_msg_eus(pamplemousse_actuators
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_actuators/msg/wingActuatorStates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pamplemousse_actuators
)

### Generating Services

### Generating Module File
_generate_module_eus(pamplemousse_actuators
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pamplemousse_actuators
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pamplemousse_actuators_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pamplemousse_actuators_generate_messages pamplemousse_actuators_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_actuators/msg/wingActuatorCommands.msg" NAME_WE)
add_dependencies(pamplemousse_actuators_generate_messages_eus _pamplemousse_actuators_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_actuators/msg/wingActuatorStates.msg" NAME_WE)
add_dependencies(pamplemousse_actuators_generate_messages_eus _pamplemousse_actuators_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pamplemousse_actuators_geneus)
add_dependencies(pamplemousse_actuators_geneus pamplemousse_actuators_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pamplemousse_actuators_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pamplemousse_actuators
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_actuators/msg/wingActuatorCommands.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pamplemousse_actuators
)
_generate_msg_lisp(pamplemousse_actuators
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_actuators/msg/wingActuatorStates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pamplemousse_actuators
)

### Generating Services

### Generating Module File
_generate_module_lisp(pamplemousse_actuators
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pamplemousse_actuators
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pamplemousse_actuators_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pamplemousse_actuators_generate_messages pamplemousse_actuators_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_actuators/msg/wingActuatorCommands.msg" NAME_WE)
add_dependencies(pamplemousse_actuators_generate_messages_lisp _pamplemousse_actuators_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_actuators/msg/wingActuatorStates.msg" NAME_WE)
add_dependencies(pamplemousse_actuators_generate_messages_lisp _pamplemousse_actuators_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pamplemousse_actuators_genlisp)
add_dependencies(pamplemousse_actuators_genlisp pamplemousse_actuators_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pamplemousse_actuators_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(pamplemousse_actuators
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_actuators/msg/wingActuatorCommands.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pamplemousse_actuators
)
_generate_msg_nodejs(pamplemousse_actuators
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_actuators/msg/wingActuatorStates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pamplemousse_actuators
)

### Generating Services

### Generating Module File
_generate_module_nodejs(pamplemousse_actuators
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pamplemousse_actuators
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pamplemousse_actuators_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pamplemousse_actuators_generate_messages pamplemousse_actuators_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_actuators/msg/wingActuatorCommands.msg" NAME_WE)
add_dependencies(pamplemousse_actuators_generate_messages_nodejs _pamplemousse_actuators_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_actuators/msg/wingActuatorStates.msg" NAME_WE)
add_dependencies(pamplemousse_actuators_generate_messages_nodejs _pamplemousse_actuators_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pamplemousse_actuators_gennodejs)
add_dependencies(pamplemousse_actuators_gennodejs pamplemousse_actuators_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pamplemousse_actuators_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pamplemousse_actuators
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_actuators/msg/wingActuatorCommands.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pamplemousse_actuators
)
_generate_msg_py(pamplemousse_actuators
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_actuators/msg/wingActuatorStates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pamplemousse_actuators
)

### Generating Services

### Generating Module File
_generate_module_py(pamplemousse_actuators
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pamplemousse_actuators
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pamplemousse_actuators_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pamplemousse_actuators_generate_messages pamplemousse_actuators_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_actuators/msg/wingActuatorCommands.msg" NAME_WE)
add_dependencies(pamplemousse_actuators_generate_messages_py _pamplemousse_actuators_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_actuators/msg/wingActuatorStates.msg" NAME_WE)
add_dependencies(pamplemousse_actuators_generate_messages_py _pamplemousse_actuators_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pamplemousse_actuators_genpy)
add_dependencies(pamplemousse_actuators_genpy pamplemousse_actuators_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pamplemousse_actuators_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pamplemousse_actuators)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pamplemousse_actuators
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pamplemousse_actuators_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pamplemousse_actuators)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pamplemousse_actuators
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pamplemousse_actuators_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pamplemousse_actuators)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pamplemousse_actuators
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pamplemousse_actuators_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pamplemousse_actuators)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pamplemousse_actuators
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pamplemousse_actuators_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pamplemousse_actuators)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pamplemousse_actuators\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pamplemousse_actuators
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pamplemousse_actuators_generate_messages_py std_msgs_generate_messages_py)
endif()
