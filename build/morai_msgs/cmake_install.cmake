# Install script for directory: /home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/kw-cobot/catkin_ws/install")
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
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kw-cobot/catkin_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/kw-cobot/catkin_ws/install" TYPE PROGRAM FILES "/home/kw-cobot/catkin_ws/build/morai_msgs/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kw-cobot/catkin_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/kw-cobot/catkin_ws/install" TYPE PROGRAM FILES "/home/kw-cobot/catkin_ws/build/morai_msgs/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kw-cobot/catkin_ws/install/setup.bash;/home/kw-cobot/catkin_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/kw-cobot/catkin_ws/install" TYPE FILE FILES
    "/home/kw-cobot/catkin_ws/build/morai_msgs/catkin_generated/installspace/setup.bash"
    "/home/kw-cobot/catkin_ws/build/morai_msgs/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kw-cobot/catkin_ws/install/setup.sh;/home/kw-cobot/catkin_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/kw-cobot/catkin_ws/install" TYPE FILE FILES
    "/home/kw-cobot/catkin_ws/build/morai_msgs/catkin_generated/installspace/setup.sh"
    "/home/kw-cobot/catkin_ws/build/morai_msgs/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kw-cobot/catkin_ws/install/setup.zsh;/home/kw-cobot/catkin_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/kw-cobot/catkin_ws/install" TYPE FILE FILES
    "/home/kw-cobot/catkin_ws/build/morai_msgs/catkin_generated/installspace/setup.zsh"
    "/home/kw-cobot/catkin_ws/build/morai_msgs/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kw-cobot/catkin_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/kw-cobot/catkin_ws/install" TYPE FILE FILES "/home/kw-cobot/catkin_ws/build/morai_msgs/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/morai_msgs/msg" TYPE FILE FILES
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/CtrlCmd.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/EgoVehiclePosition.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/EgoVehicleStatus.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/EgoVehicleVelocity.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/FactoryAddress.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/GPSMessage.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/GuideData.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/ObjectInfo.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/ScenarioLoad.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/SVehicleStatus.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/TrafficLight.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/VehicleCommand.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/VelPlot.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/ERP42Info.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/GetTrafficLightStatus.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/SetTrafficLight.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/IntersectionControl.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/IntersectionStatus.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/CollisionData.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/MultiEgoSetting.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/IntscnTL.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/SensorPosControl.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/GenericVehicleControl.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/SaveSensorData.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/MoraiTimestamp.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/GhostMessage.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/Lamps.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/MoraiTLInfo.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/MoraiSimProcHandle.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/MoraiSimProcStatus.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/MoraiSrvResponse.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/MoraiTLIndex.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/RadarTrack.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/RadarTracks.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/Mgeo.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/MgeoLink.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/MgeoLinkList.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/MgeoNode.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/MgeoNodeList.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/EventInfo.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/ReplayInfo.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/ObjectStatus.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/ObjectStatusList.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/VehicleSpecIndex.msg"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/msg/VehicleSpec.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/morai_msgs/srv" TYPE FILE FILES
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/srv/MoraiScenarioLoadSrv.srv"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/srv/MoraiSimProcSrv.srv"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/srv/MoraiTLInfoSrv.srv"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/srv/MoraiVehicleSpecSrv.srv"
    "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/srv/MoraiEventCmdSrv.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/morai_msgs/cmake" TYPE FILE FILES "/home/kw-cobot/catkin_ws/build/morai_msgs/catkin_generated/installspace/morai_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/kw-cobot/catkin_ws/devel/.private/morai_msgs/include/morai_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/kw-cobot/catkin_ws/devel/.private/morai_msgs/share/roseus/ros/morai_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/kw-cobot/catkin_ws/devel/.private/morai_msgs/share/common-lisp/ros/morai_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/kw-cobot/catkin_ws/devel/.private/morai_msgs/share/gennodejs/ros/morai_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/kw-cobot/catkin_ws/devel/.private/morai_msgs/lib/python2.7/dist-packages/morai_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/kw-cobot/catkin_ws/devel/.private/morai_msgs/lib/python2.7/dist-packages/morai_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/kw-cobot/catkin_ws/build/morai_msgs/catkin_generated/installspace/morai_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/morai_msgs/cmake" TYPE FILE FILES "/home/kw-cobot/catkin_ws/build/morai_msgs/catkin_generated/installspace/morai_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/morai_msgs/cmake" TYPE FILE FILES
    "/home/kw-cobot/catkin_ws/build/morai_msgs/catkin_generated/installspace/morai_msgsConfig.cmake"
    "/home/kw-cobot/catkin_ws/build/morai_msgs/catkin_generated/installspace/morai_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/morai_msgs" TYPE FILE FILES "/home/kw-cobot/catkin_ws/src/scout_msgs/morai_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/kw-cobot/catkin_ws/build/morai_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/kw-cobot/catkin_ws/build/morai_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
