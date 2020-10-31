# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pamplemousse_sensors: 3 messages, 0 services")

set(MSG_I_FLAGS "-Ipamplemousse_sensors:/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pamplemousse_sensors_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/SpatialState.msg" NAME_WE)
add_custom_target(_pamplemousse_sensors_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pamplemousse_sensors" "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/SpatialState.msg" "pamplemousse_sensors/filterStatus:pamplemousse_sensors/systemStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/systemStatus.msg" NAME_WE)
add_custom_target(_pamplemousse_sensors_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pamplemousse_sensors" "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/systemStatus.msg" ""
)

get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/filterStatus.msg" NAME_WE)
add_custom_target(_pamplemousse_sensors_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pamplemousse_sensors" "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/filterStatus.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pamplemousse_sensors
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/SpatialState.msg"
  "${MSG_I_FLAGS}"
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/filterStatus.msg;/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/systemStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pamplemousse_sensors
)
_generate_msg_cpp(pamplemousse_sensors
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/systemStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pamplemousse_sensors
)
_generate_msg_cpp(pamplemousse_sensors
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/filterStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pamplemousse_sensors
)

### Generating Services

### Generating Module File
_generate_module_cpp(pamplemousse_sensors
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pamplemousse_sensors
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pamplemousse_sensors_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pamplemousse_sensors_generate_messages pamplemousse_sensors_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/SpatialState.msg" NAME_WE)
add_dependencies(pamplemousse_sensors_generate_messages_cpp _pamplemousse_sensors_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/systemStatus.msg" NAME_WE)
add_dependencies(pamplemousse_sensors_generate_messages_cpp _pamplemousse_sensors_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/filterStatus.msg" NAME_WE)
add_dependencies(pamplemousse_sensors_generate_messages_cpp _pamplemousse_sensors_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pamplemousse_sensors_gencpp)
add_dependencies(pamplemousse_sensors_gencpp pamplemousse_sensors_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pamplemousse_sensors_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(pamplemousse_sensors
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/SpatialState.msg"
  "${MSG_I_FLAGS}"
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/filterStatus.msg;/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/systemStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pamplemousse_sensors
)
_generate_msg_eus(pamplemousse_sensors
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/systemStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pamplemousse_sensors
)
_generate_msg_eus(pamplemousse_sensors
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/filterStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pamplemousse_sensors
)

### Generating Services

### Generating Module File
_generate_module_eus(pamplemousse_sensors
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pamplemousse_sensors
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pamplemousse_sensors_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pamplemousse_sensors_generate_messages pamplemousse_sensors_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/SpatialState.msg" NAME_WE)
add_dependencies(pamplemousse_sensors_generate_messages_eus _pamplemousse_sensors_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/systemStatus.msg" NAME_WE)
add_dependencies(pamplemousse_sensors_generate_messages_eus _pamplemousse_sensors_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/filterStatus.msg" NAME_WE)
add_dependencies(pamplemousse_sensors_generate_messages_eus _pamplemousse_sensors_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pamplemousse_sensors_geneus)
add_dependencies(pamplemousse_sensors_geneus pamplemousse_sensors_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pamplemousse_sensors_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pamplemousse_sensors
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/SpatialState.msg"
  "${MSG_I_FLAGS}"
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/filterStatus.msg;/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/systemStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pamplemousse_sensors
)
_generate_msg_lisp(pamplemousse_sensors
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/systemStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pamplemousse_sensors
)
_generate_msg_lisp(pamplemousse_sensors
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/filterStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pamplemousse_sensors
)

### Generating Services

### Generating Module File
_generate_module_lisp(pamplemousse_sensors
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pamplemousse_sensors
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pamplemousse_sensors_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pamplemousse_sensors_generate_messages pamplemousse_sensors_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/SpatialState.msg" NAME_WE)
add_dependencies(pamplemousse_sensors_generate_messages_lisp _pamplemousse_sensors_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/systemStatus.msg" NAME_WE)
add_dependencies(pamplemousse_sensors_generate_messages_lisp _pamplemousse_sensors_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/filterStatus.msg" NAME_WE)
add_dependencies(pamplemousse_sensors_generate_messages_lisp _pamplemousse_sensors_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pamplemousse_sensors_genlisp)
add_dependencies(pamplemousse_sensors_genlisp pamplemousse_sensors_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pamplemousse_sensors_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(pamplemousse_sensors
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/SpatialState.msg"
  "${MSG_I_FLAGS}"
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/filterStatus.msg;/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/systemStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pamplemousse_sensors
)
_generate_msg_nodejs(pamplemousse_sensors
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/systemStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pamplemousse_sensors
)
_generate_msg_nodejs(pamplemousse_sensors
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/filterStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pamplemousse_sensors
)

### Generating Services

### Generating Module File
_generate_module_nodejs(pamplemousse_sensors
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pamplemousse_sensors
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pamplemousse_sensors_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pamplemousse_sensors_generate_messages pamplemousse_sensors_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/SpatialState.msg" NAME_WE)
add_dependencies(pamplemousse_sensors_generate_messages_nodejs _pamplemousse_sensors_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/systemStatus.msg" NAME_WE)
add_dependencies(pamplemousse_sensors_generate_messages_nodejs _pamplemousse_sensors_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/filterStatus.msg" NAME_WE)
add_dependencies(pamplemousse_sensors_generate_messages_nodejs _pamplemousse_sensors_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pamplemousse_sensors_gennodejs)
add_dependencies(pamplemousse_sensors_gennodejs pamplemousse_sensors_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pamplemousse_sensors_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pamplemousse_sensors
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/SpatialState.msg"
  "${MSG_I_FLAGS}"
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/filterStatus.msg;/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/systemStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pamplemousse_sensors
)
_generate_msg_py(pamplemousse_sensors
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/systemStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pamplemousse_sensors
)
_generate_msg_py(pamplemousse_sensors
  "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/filterStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pamplemousse_sensors
)

### Generating Services

### Generating Module File
_generate_module_py(pamplemousse_sensors
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pamplemousse_sensors
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pamplemousse_sensors_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pamplemousse_sensors_generate_messages pamplemousse_sensors_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/SpatialState.msg" NAME_WE)
add_dependencies(pamplemousse_sensors_generate_messages_py _pamplemousse_sensors_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/systemStatus.msg" NAME_WE)
add_dependencies(pamplemousse_sensors_generate_messages_py _pamplemousse_sensors_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/filterStatus.msg" NAME_WE)
add_dependencies(pamplemousse_sensors_generate_messages_py _pamplemousse_sensors_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pamplemousse_sensors_genpy)
add_dependencies(pamplemousse_sensors_genpy pamplemousse_sensors_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pamplemousse_sensors_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pamplemousse_sensors)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pamplemousse_sensors
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pamplemousse_sensors_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pamplemousse_sensors)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pamplemousse_sensors
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pamplemousse_sensors_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pamplemousse_sensors)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pamplemousse_sensors
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pamplemousse_sensors_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pamplemousse_sensors)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pamplemousse_sensors
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pamplemousse_sensors_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pamplemousse_sensors)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pamplemousse_sensors\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pamplemousse_sensors
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pamplemousse_sensors_generate_messages_py std_msgs_generate_messages_py)
endif()
