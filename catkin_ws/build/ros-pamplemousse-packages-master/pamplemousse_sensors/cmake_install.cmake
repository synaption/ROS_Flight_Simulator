# Install script for directory: /home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/desktop_ubuntu/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pamplemousse_sensors/msg" TYPE FILE FILES
    "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/filterStatus.msg"
    "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/systemStatus.msg"
    "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/msg/SpatialState.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pamplemousse_sensors/cmake" TYPE FILE FILES "/home/desktop_ubuntu/catkin_ws/build/ros-pamplemousse-packages-master/pamplemousse_sensors/catkin_generated/installspace/pamplemousse_sensors-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/desktop_ubuntu/catkin_ws/devel/include/pamplemousse_sensors")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/desktop_ubuntu/catkin_ws/devel/share/roseus/ros/pamplemousse_sensors")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/desktop_ubuntu/catkin_ws/devel/share/common-lisp/ros/pamplemousse_sensors")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/desktop_ubuntu/catkin_ws/devel/share/gennodejs/ros/pamplemousse_sensors")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/desktop_ubuntu/catkin_ws/devel/lib/python2.7/dist-packages/pamplemousse_sensors")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/desktop_ubuntu/catkin_ws/devel/lib/python2.7/dist-packages/pamplemousse_sensors")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/desktop_ubuntu/catkin_ws/build/ros-pamplemousse-packages-master/pamplemousse_sensors/catkin_generated/installspace/pamplemousse_sensors.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pamplemousse_sensors/cmake" TYPE FILE FILES "/home/desktop_ubuntu/catkin_ws/build/ros-pamplemousse-packages-master/pamplemousse_sensors/catkin_generated/installspace/pamplemousse_sensors-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pamplemousse_sensors/cmake" TYPE FILE FILES
    "/home/desktop_ubuntu/catkin_ws/build/ros-pamplemousse-packages-master/pamplemousse_sensors/catkin_generated/installspace/pamplemousse_sensorsConfig.cmake"
    "/home/desktop_ubuntu/catkin_ws/build/ros-pamplemousse-packages-master/pamplemousse_sensors/catkin_generated/installspace/pamplemousse_sensorsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pamplemousse_sensors" TYPE FILE FILES "/home/desktop_ubuntu/catkin_ws/src/ros-pamplemousse-packages-master/pamplemousse_sensors/package.xml")
endif()

