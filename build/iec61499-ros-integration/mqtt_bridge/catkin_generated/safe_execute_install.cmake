execute_process(COMMAND "/home/lyu/catkin_ws/build/iec61499-ros-integration/mqtt_bridge/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/lyu/catkin_ws/build/iec61499-ros-integration/mqtt_bridge/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
