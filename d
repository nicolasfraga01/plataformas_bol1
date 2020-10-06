[33mcommit 171d4ef538e0004dcb63e70216b3d96968a7b33c[m
Author: robertoir <roberto.iglesias.rodriguez@usc.es>
Date:   Tue Oct 6 23:11:09 2020 +0200

    AA

[1mdiff --git a/CMakeLists.txt b/CMakeLists.txt[m
[1mnew file mode 120000[m
[1mindex 0000000..581e61d[m
[1m--- /dev/null[m
[1m+++ b/CMakeLists.txt[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32m/opt/ros/kinetic/share/catkin/cmake/toplevel.cmake[m
\ No newline at end of file[m
[1mdiff --git a/README.md b/README.md[m
[1mdeleted file mode 100644[m
[1mindex f863285..0000000[m
[1m--- a/README.md[m
[1m+++ /dev/null[m
[36m@@ -1,2 +0,0 @@[m
[31m-# practicas_ws[m
[31m-preparación del workspace para prácticas[m
[1mdiff --git a/ejercicio1/CMakeLists.txt b/ejercicio1/CMakeLists.txt[m
[1mnew file mode 100644[m
[1mindex 0000000..a4da3a2[m
[1m--- /dev/null[m
[1m+++ b/ejercicio1/CMakeLists.txt[m
[36m@@ -0,0 +1,204 @@[m
[32m+[m[32mcmake_minimum_required(VERSION 2.8.3)[m
[32m+[m[32mproject(ejercicio1)[m
[32m+[m
[32m+[m[32m## Compile as C++11, supported in ROS Kinetic and newer[m
[32m+[m[32m# add_compile_options(-std=c++11)[m
[32m+[m
[32m+[m[32m## Find catkin macros and libraries[m
[32m+[m[32m## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)[m
[32m+[m[32m## is used, also find other catkin packages[m
[32m+[m[32mfind_package(catkin REQUIRED COMPONENTS[m
[32m+[m[32m  rospy[m
[32m+[m[32m)[m
[32m+[m
[32m+[m[32m## System dependencies are found with CMake's conventions[m
[32m+[m[32m# find_package(Boost REQUIRED COMPONENTS system)[m
[32m+[m
[32m+[m
[32m+[m[32m## Uncomment this if the package has a setup.py. This macro ensures[m
[32m+[m[32m## modules and global scripts declared therein get installed[m
[32m+[m[32m## See http://ros.org/doc/api/catkin/html/user_guide/setup_dot_py.html[m
[32m+[m[32m# catkin_python_setup()[m
[32m+[m
[32m+[m[32m################################################[m
[32m+[m[32m## Declare ROS messages, services and actions ##[m
[32m+[m[32m################################################[m
[32m+[m
[32m+[m[32m## To declare and build messages, services or actions from within this[m
[32m+[m[32m## package, follow these steps:[m
[32m+[m[32m## * Let MSG_DEP_SET be the set of packages whose message types you use in[m
[32m+[m[32m##   your messages/services/actions (e.g. std_msgs, actionlib_msgs, ...).[m
[32m+[m[32m## * In the file package.xml:[m
[32m+[m[32m##   * add a build_depend tag for "message_generation"[m
[32m+[m[32m##   * add a build_depend and a exec_depend tag for each package in MSG_DEP_SET[m
[32m+[m[32m##   * If MSG_DEP_SET isn't empty the following dependency has been pulled in[m
[32m+[m[32m##     but can be declared for certainty nonetheless:[m
[32m+[m[32m##     * add a exec_depend tag for "message_runtime"[m
[32m+[m[32m## * In this file (CMakeLists.txt):[m
[32m+[m[32m##   * add "message_generation" and every package in MSG_DEP_SET to[m
[32m+[m[32m##     find_package(catkin REQUIRED COMPONENTS ...)[m
[32m+[m[32m##   * add "message_runtime" and every package in MSG_DEP_SET to[m
[32m+[m[32m##     catkin_package(CATKIN_DEPENDS ...)[m
[32m+[m[32m##   * uncomment the add_*_files sections below as needed[m
[32m+[m[32m##     and list every .msg/.srv/.action file to be processed[m
[32m+[m[32m##   * uncomment the generate_messages entry below[m
[32m+[m[32m##   * add every package in MSG_DEP_SET to generate_messages(DEPENDENCIES ...)[m
[32m+[m
[32m+[m[32m## Generate messages in the 'msg' folder[m
[32m+[m[32m# add_message_files([m
[32m+[m[32m#   FILES[m
[32m+[m[32m#   Message1.msg[m
[32m+[m[32m#   Message2.msg[m
[32m+[m[32m# )[m
[32m+[m
[32m+[m[32m## Generate services in the 'srv' folder[m
[32m+[m[32m# add_service_files([m
[32m+[m[32m#   FILES[m
[32m+[m[32m#   Service1.srv[m
[32m+[m[32m#   Service2.srv[m
[32m+[m[32m# )[m
[32m+[m
[32m+[m[32m## Generate actions in the 'action' folder[m
[32m+[m[32m# add_action_files([m
[32m+[m[32m#   FILES[m
[32m+[m[32m#   Action1.action[m
[32m+[m[32m#   Action2.action[m
[32m+[m[32m# )[m
[32m+[m
[32m+[m[32m## Generate added messages and services with any dependencies listed here[m
[32m+[m[32m# generate_messages([m
[32m+[m[32m#   DEPENDENCIES[m
[32m+[m[32m#   std_msgs  # Or other packages containing msgs[m
[32m+[m[32m# )[m
[32m+[m
[32m+[m[32m################################################[m
[32m+[m[32m## Declare ROS dynamic reconfigure parameters ##[m
[32m+[m[32m################################################[m
[32m+[m
[32m+[m[32m## To declare and build dynamic reconfigure parameters within this[m
[32m+[m[32m## package, follow these steps:[m
[32m+[m[32m## * In the file package.xml:[m
[32m+[m[32m##   * add a build_depend and a exec_depend tag for "dynamic_reconfigure"[m
[32m+[m[32m## * In this file (CMakeLists.txt):[m
[32m+[m[32m##   * add "dynamic_reconfigure" to[m
[32m+[m[32m##     find_package(catkin REQUIRED COMPONENTS ...)[m
[32m+[m[32m##   * uncomment the "generate_dynamic_reconfigure_options" section below[m
[32m+[m[32m##     and list every .cfg file to be processed[m
[32m+[m
[32m+[m[32m## Generate dynamic reconfigure parameters in the 'cfg' folder[m
[32m+[m[32m# generate_dynamic_reconfigure_options([m
[32m+[m[32m#   cfg/DynReconf1.cfg[m
[32m+[m[32m#   cfg/DynReconf2.cfg[m
[32m+[m[32m# )[m
[32m+[m
[32m+[m[32m###################################[m
[32m+[m[32m## catkin specific configuration ##[m
[32m+[m[32m###################################[m
[32m+[m[32m## The catkin_package macro generates cmake config files for your package[m
[32m+[m[32m## Declare things to be passed to dependent projects[m
[32m+[m[32m## INCLUDE_DIRS: uncomment this if your package contains header files[m
[32m+[m[32m## LIBRARIES: libraries you create in this project that dependent projects also need[m
[32m+[m[32m## CATKIN_DEPENDS: catkin_packages dependent projects also need[m
[32m+[m[32m## DEPENDS: system dependencies of this project that dependent projects also need[m
[32m+[m[32mcatkin_package([m
[32m+[m[32m#  INCLUDE_DIRS include[m
[32m+[m[32m#  LIBRARIES ejercicio1[m
[32m+[m[32m#  CATKIN_DEPENDS rospy[m
[32m+[m[32m#  DEPENDS system_lib[m
[32m+[m[32m)[m
[32m+[m
[32m+[m[32m###########[m
[32m+[m[32m## Build ##[m
[32m+[m[32m###########[m
[32m+[m
[32m+[m[32m## Specify additional locations of header files[m
[32m+[m[32m## Your package locations should be listed before other locations[m
[32m+[m[32minclude_directories([m
[32m+[m[32m# include[m
[32m+[m[32m  ${catkin_INCLUDE_DIRS}[m
[32m+[m[32m)[m
[32m+[m
[32m+[m[32m## Declare a C++ library[m
[32m+[m[32m# add_library(${PROJECT_NAME}[m
[32m+[m[32m#   src/${PROJECT_NAME}/ejercicio1.cpp[m
[32m+[m[32m# )[m
[32m+[m
[32m+[m[32m## Add cmake target dependencies of the library[m
[32m+[m[32m## as an example, code may need to be generated before libraries[m
[32m+[m[32m## either from message generation or dynamic reconfigure[m
[32m+[m[32m# add_dependencies(${PROJECT_NAME} ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})[m
[32m+[m
[32m+[m[32m## Declare a C++ executable[m
[32m+[m[32m## With catkin_make all packages are built within a single CMake context[m
[32m+[m[32m## The recommended prefix ensures that target names across packages don't collide[m
[32m+[m[32m# add_executable(${PROJECT_NAME}_node src/ejercicio1_node.cpp)[m
[32m+[m
[32m+[m[32m## Rename C++ executable without prefix[m
[32m+[m[32m## The above recommended prefix causes long target names, the following renames the[m
[32m+[m[32m## target back to the shorter version for ease of user use[m
[32m+[m[32m## e.g. "rosrun someones_pkg node" instead of "rosrun someones_pkg someones_pkg_node"[m
[32m+[m[32m# set_target_properties(${PROJECT_NAME}_node PROPERTIES OUTPUT_NAME node PREFIX "")[m
[32m+[m
[32m+[m[32m## Add cmake target dependencies of the executable[m
[32m+[m[32m## same as for the library above[m
[32m+[m[32m# add_dependencies(${PROJECT_NAME}_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})[m
[32m+[m
[32m+[m[32m## Specify libraries to link a library or executable target against[m
[32m+[m[32m# target_link_libraries(${PROJECT_NAME}_node[m
[32m+[m[32m#   ${catkin_LIBRARIES}[m
[32m+[m[32m# )[m
[32m+[m
[32m+[m[32m#############[m
[32m+[m[32m## Install ##[m
[32m+[m[32m#############[m
[32m+[m
[32m+[m[32m# all install targets should use catkin DESTINATION variables[m
[32m+[m[32m# See http://ros.org/doc/api/catkin/html/adv_user_guide/variables.html[m
[32m+[m
[32m+[m[32m## Mark executable scripts (Python etc.) for installation[m
[32m+[m[32m## in contrast to setup.py, you can choose the destination[m
[32m+[m[32m# install(PROGRAMS[m
[32m+[m[32m#   scripts/my_python_script[m
[32m+[m[32m#   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}[m
[32m+[m[32m# )[m
[32m+[m
[32m+[m[32m## Mark executables for installation[m
[32m+[m[32m## See http://docs.ros.org/melodic/api/catkin/html/howto/format1/building_executables.html[m
[32m+[m[32m# install(TARGETS ${PROJECT_NAME}_node[m
[32m+[m[32m#   RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}[m
[32m+[m[32m# )[m
[32m+[m
[32m+[m[32m## Mark libraries for installation[m
[32m+[m[32m## See http://docs.ros.org/melodic/api/catkin/html/howto/format1/building_libraries.html[m
[32m+[m[32m# install(TARGETS ${PROJECT_NAME}[m
[32m+[m[32m#   ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}[m
[32m+[m[32m#   LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}[m
[32m+[m[32m#   RUNTIME DESTINATION ${CATKIN_GLOBAL_BIN_DESTINATION}[m
[32m+[m[32m# )[m
[32m+[m
[32m+[m[32m## Mark cpp header files for installation[m
[32m+[m[32m# install(DIRECTORY include/${PROJECT_NAME}/[m
[32m+[m[32m#   DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}[m
[32m+[m[32m#   FILES_MATCHING PATTERN "*.h"[m
[32m+[m[32m#   PATTERN ".svn" EXCLUDE[m
[32m+[m[32m# )[m
[32m+[m
[32m+[m[32m## Mark other files for installation (e.g. launch and bag files, etc.)[m
[32m+[m[32m# install(FILES[m
[32m+[m[32m#   # myfile1[m
[32m+[m[32m#   # myfile2[m
[32m+[m[32m#   DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}[m
[32m+[m[32m# )[m
[32m+[m
[32m+[m[32m#############[m
[32m+[m[32m## Testing ##[m
[32m+[m[32m#############[m
[32m+[m
[32m+[m[32m## Add gtest based cpp test target and link libraries[m
[32m+[m[32m# catkin_add_gtest(${PROJECT_NAME}-test test/test_ejercicio1.cpp)[m
[32m+[m[32m# if(TARGET ${PROJECT_NAME}-test)[m
[32m+[m[32m#   target_link_libraries(${PROJECT_NAME}-test ${PROJECT_NAME})[m
[32m+[m[32m# endif()[m
[32m+[m
[32m+[m[32m## Add folders to be run by python nosetests[m
[32m+[m[32m# catkin_add_nosetests(test)[m
[1mdiff --git a/ejercicio1/package.xml b/ejercicio1/package.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..8fbe7d1[m
[1m--- /dev/null[m
[1m+++ b/ejercicio1/package.xml[m
[36m@@ -0,0 +1,62 @@[m
[32m+[m[32m<?xml version="1.0"?>[m
[32m+[m[32m<package format="2">[m
[32m+[m[32m  <name>ejercicio1</name>[m
[32m+[m[32m  <version>0.0.0</version>[m
[32m+[m[32m  <description>The ejercicio1 package</description>[m
[32m+[m
[32m+[m[32m  <!-- One maintainer tag required, multiple allowed, one person per tag -->[m
[32m+[m[32m  <!-- Example:  -->[m
[32m+[m[32m  <!-- <maintainer email="jane.doe@example.com">Jane Doe</maintainer> -->[m
[32m+[m[32m  <maintainer email="robotica@todo.todo">robotica</maintainer>[m
[32m+[m
[32m+[m
[32m+[m[32m  <!-- One license tag required, multiple allowed, one license per tag -->[m
[32m+[m[32m  <!-- Commonly used license strings: -->[m
[32m+[m[32m  <!--   BSD, MIT, Boost Software License, GPLv2, GPLv3, LGPLv2.1, LGPLv3 -->[m
[32m+[m[32m  <license>TODO</license>[m
[32m+[m
[32m+[m
[32m+[m[32m  <!-- Url tags are optional, but multiple are allowed, one per tag -->[m
[32m+[m[32m  <!-- Optional attribute type can be: website, bugtracker, or repository -->[m
[32m+[m[32m  <!-- Example: -->[m
[32m+[m[32m  <!-- <url type="website">http://wiki.ros.org/ejercicio1</url> -->[m
[32m+[m
[32m+[m
[32m+[m[32m  <!-- Author tags are optional, multiple are allowed, one per tag -->[m
[32m+[m[32m  <!-- Authors do not have to be maintainers, but could be -->[m
[32m+[m[32m  <!-- Example: -->[m
[32m+[m[32m  <!-- <author email="jane.doe@example.com">Jane Doe</author> -->[m
[32m+[m
[32m+[m
[32m+[m[32m  <!-- The *depend tags are used to specify dependencies -->[m
[32m+[m[32m  <!-- Dependencies can be catkin packages or system dependencies -->[m
[32m+[m[32m  <!-- Examples: -->[m
[32m+[m[32m  <!-- Use depend as a shortcut for packages that are both build and exec dependencies -->[m
[32m+[m[32m  <!--   <depend>roscpp</depend> -->[m
[32m+[m[32m  <!--   Note that this is equivalent to the following: -->[m
[32m+[m[32m  <!--   <build_depend>roscpp</build_depend> -->[m
[32m+[m[32m  <!--   <exec_depend>roscpp</exec_depend> -->[m
[32m+[m[32m  <!-- Use build_depend for packages you need at compile time: -->[m
[32m+[m[32m  <!--   <build_depend>message_generation</build_depend> -->[m
[32m+[m[32m  <!-- Use build_export_depend for packages you need in order to build against this package: -->[m
[32m+[m[32m  <!--   <build_export_depend>message_generation</build_export_depend> -->[m
[32m+[m[32m  <!-- Use buildtool_depend for build tool packages: -->[m
[32m+[m[32m  <!--   <buildtool_depend>catkin</buildtool_depend> -->[m
[32m+[m[32m  <!-- Use exec_depend for packages you need at runtime: -->[m
[32m+[m[32m  <!--   <exec_depend>message_runtime</exec_depend> -->[m
[32m+[m[32m  <!-- Use test_depend for packages you need only for testing: -->[m
[32m+[m[32m  <!--   <test_depend>gtest</test_depend> -->[m
[32m+[m[32m  <!-- Use doc_depend for packages you need only for building documentation: -->[m
[32m+[m[32m  <!--   <doc_depend>doxygen</doc_depend> -->[m
[32m+[m[32m  <buildtool_depend>catkin</buildtool_depend>[m
[32m+[m[32m  <build_depend>rospy</build_depend>[m
[32m+[m[32m  <build_export_depend>rospy</build_export_depend>[m
[32m+[m[32m  <exec_depend>rospy</exec_depend>[m
[32m+[m
[32m+[m
[32m+[m[32m  <!-- The export tag contains other, unspecified, tags -->[m
[32m+[m[32m  <export>[m
[32m+[m[32m    <!-- Other tools can request additional information be placed here -->[m
[32m+[m
[32m+[m[32m  </export>[m
[32m+[m[32m</package>[m
[1mdiff --git a/ejercicio10/CMakeLists.txt b/ejercicio10/CMakeLists.txt[m
[1mnew file mode 100644[m
[1mindex 0000000..e839d84[m
[1m--- /dev/null[m
[1m+++ b/ejercicio10/CMakeLists.txt[m
[36m@@ -0,0 +1,204 @@[m
[32m+[m[32mcmake_minimum_required(VERSION 2.8.3)[m
[32m+[m[32mproject(ejercicio10)[m
[32m+[m
[32m+[m[32m## Compile as C++11, supported in ROS Kinetic and newer[m
[32m+[m[32m# add_compile_options(-std=c++11)[m
[32m+[m
[32m+[m[32m## Find catkin macros and libraries[m
[32m+[m[32m## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)[m
[32m+[m[32m## is used, also find other catkin packages[m
[32m+[m[32mfind_package(catkin REQUIRED COMPONENTS[m
[32m+[m[32m  rospy[m
[32m+[m[32m)[m
[32m+[m
[32m+[m[32m## System dependencies are found with CMake's conventions[m
[32m+[m[32m# find_package(Boost REQUIRED COMPONENTS system)[m
[32m+[m
[32m+[m
[32m+[m[32m## Uncomment this if the package has a setup.py. This macro ensures[m
[32m+[m[32m## modules and global scripts declared therein get installed[m
[32m+[m[32m## See http://ros.org/doc/api/catkin/html/user_guide/setup_dot_py.html[m
[32m+[m[32m# catkin_python_setup()[m
[32m+[m
[32m+[m[32m################################################[m
[32m+[m[32m## Declare ROS messages, services and actions ##[m
[32m+[m[32m################################################[m
[32m+[m
[32m+[m[32m## To declare and build messages, services or actions from within this[m
[32m+[m[32m## package, follow these steps:[m
[32m+[m[32m## * Let MSG_DEP_SET be the set of packages whose message types you use in[m
[32m+[m[32m##   your messages/services/actions (e.g. std_msgs, actionlib_msgs, ...).[m
[32m+[m[32m## * In the file package.xml:[m
[32m+[m[32m##   * add a build_depend tag for "message_generation"[m
[32m+[m[32m##   * add a build_depend and a exec_depend tag for each package in MSG_DEP_SET[m
[32m+[m[32m##   * If MSG_DEP_SET isn't empty the following dependency has been pulled in[m
[32m+[m[32m##     but can be declared for certainty nonetheless:[m
[32m+[m[32m##     * add a exec_depend tag for "message_runtime"[m
[32m+[m[32m## * In this file (CMakeLists.txt):[m
[32m+[m[32m##   * add "message_generation" and every package in MSG_DEP_SET to[m
[32m+[m[32m##     find_package(catkin REQUIRED COMPONENTS ...)[m
[32m+[m[32m##   * add "message_runtime" and every package in MSG_DEP_SET to[m
[32m+[m[32m##     catkin_package(CATKIN_DEPENDS ...)[m
[32m+[m[32m##   * uncomment the add_*_files sections below as needed[m
[32m+[m[32m##     and list every .msg/.srv/.action file to be processed[m
[32m+[m[32m##   * uncomment the generate_messages entry below[m
[32m+[m[32m##   * add every package in MSG_DEP_SET to generate_messages(DEPENDENCIES ...)[m
[32m+[m
[32m+[m[32m## Generate messages in the 'msg' folder[m
[32m+[m[32m# add_message_files([m
[32m+[m[32m#   FILES[m
[32m+[m[32m#   Message1.msg[m
[32m+[m[32m#   Message2.msg[m
[32m+[m[32m# )[m
[32m+[m
[32m+[m[32m## Generate services in the 'srv' folder[m
[32m+[m[32m# add_service_files([m
[32m+[m[32m#   FILES[m
[32m+[m[32m#   Service1.srv[m
[32m+[m[32m#   Service2.srv[m
[32m+[m[32m# )[m
[32m+[m
[32m+[m[32m## Generate actions in the 'action' folder[m
[32m+[m[32m# add_action_files([m
[32m+[m[32m#   FILES[m
[32m+[m[32m#   Action1.action[m
[32m+[m[32m#   Action2.action[m
[32m+[m[32m# )[m
[32m+[m
[32m+[m[32m## Generate added messages and services with any dependencies listed here[m
[32m+[m[32m# generate_messages([m
[32m+[m[32m#   DEPENDENCIES[m
[32m+[m[32m#   std_msgs  # Or other packages containing msgs[m
[32m+[m[32m# )[m
[32m+[m
[32m+[m[32m################################################[m
[32m+[m[32m## Declare ROS dynamic reconfigure parameters ##[m
[32m+[m[32m################################################[m
[32m+[m
[32m+[m[32m## To declare and build dynamic reconfigure parameters within this[m
[32m+[m[32m## package, follow these steps:[m
[32m+[m[32m## * In the file package.xml:[m
[32m+[m[32m##   * add a build_depend and a exec_depend tag for "dynamic_reconfigure"[m
[32m+[m[32m## * In this file (CMakeLists.txt):[m
[32m+[m[32m##   * add "dynamic_reconfigure" to[m
[32m+[m[32m##     find_package(catkin REQUIRED COMPONENTS ...)[m
[32m+[m[32m##   * uncomment the "generate_dynamic_reconfigure_options" section below[m
[32m+[m[32m##     and list every .cfg file to be processed[m
[32m+[m
[32m+[m[32m## Generate dynamic reconfigure parameters in the 'cfg' folder[m
[32m+[m[32m# generate_dynamic_reconfigure_options([m
[32m+[m[32m#   cfg/DynReconf1.cfg[m
[32m+[m[32m#   cfg/DynReconf2.cfg[m
[32m+[m[32m# )[m
[32m+[m
[32m+[m[32m###################################[m
[32m+[m[32m## catkin specific configuration ##[m
[32m+[m[32m###################################[m
[32m+[m[32m## The catkin_package macro generates cmake config files for your package[m
[32m+[m[32m## Declare things to be passed to dependent projects[m
[32m+[m[32m## INCLUDE_DIRS: uncomment this if your package contains header files[m
[32m+[m[32m## LIBRARIES: libraries you create in this project that dependent projects also need[m
[32m+[m[32m## CATKIN_DEPENDS: catkin_packages dependent projects also need[m
[32m+[m[32m## DEPENDS: system dependencies of this project that dependent projects also need[m
[32m+[m[32mcatkin_package([m
[32m+[m[32m#  INCLUDE_DIRS include[m
[32m+[m[32m#  LIBRARIES ejercicio10[m
[32m+[m[32m#  CATKIN_DEPENDS rospy[m
[32m+[m[32m#  DEPENDS system_lib[m
[32m+[m[32m)[m
[32m+[m
[32m+[m[32m###########[m
[32m+[m[32m## Build ##[m
[32m+[m[32m###########[m
[32m+[m
[32m+[m[32m## Specify additional locations of header files[m
[32m+[m[32m## Your package locations should be listed before other locations[m
[32m+[m[32minclude_directories([m
[32m+[m[32m# include[m
[32m+[m[32m  ${catkin_INCLUDE_DIRS}[m
[32m+[m[32m)[m
[32m+[m
[32m+[m[32m## Declare a C++ library[m
[32m+[m[32m# add_library(${PROJECT_NAME}[m
[32m+[m[32m#   src/${PROJECT_NAME}/ejercicio10.cpp[m
[32m+[m[32m# )[m
[32m+[m
[32m+[m[32m## Add cmake target dependencies of the library[m
[32m+[m[32m## as an example, code may need to be generated before libraries[m
[32m+[m[32m## either from message generation or dynamic reconfigure[m
[32m+[m[32m# add_dependencies(${PROJECT_NAME} ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})[m
[32m+[m
[32m+[m[32m## Declare a C++ executable[m
[32m+[m[32m## With catkin_make all packages are built within a single CMake context[m
[32m+[m[32m## The recommended prefix ensures that target names across packages don't collide[m
[32m+[m[32m# add_executable(${PROJECT_NAME}_node src/ejercicio10_node.cpp)[m
[32m+[m
[32m+[m[32m## Rename C++ executable without prefix[m
[32m+[m[32m## The above recommended prefix causes long target names, the following renames the[m
[32m+[m[32m## target back to the shorter version for ease of user use[m
[32m+[m[32m## e.g. "rosrun someones_pkg node" instead of "rosrun someones_pkg someones_pkg_node"[m
[32m+[m[32m# set_target_properties(${PROJECT_NAME}_node PROPERTIES OUTPUT_NAME node PREFIX "")[m
[32m+[m
[32m+[m[32m## Add cmake target dependencies of the executable[m
[32m+[m[32m## same as for the library above[m
[32m+[m[32m# add_dependencies(${PROJECT_NAME}_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})[m
[32m+[m
[32m+[m[32m## Specify libraries to link a library or executable target against[m
[32m+[m[32m# target_link_libraries(${PROJECT_NAME}_node[m
[32m+[m[32m#   ${catkin_LIBRARIES}[m
[32m+[m[32m# )[m
[32m+[m
[32m+[m[32m#############[m
[32m+[m[32m## Install ##[m
[32m+[m[32m#############[m
[32m+[m
[32m+[m[32m# all install targets should use catkin DESTINATION variables[m
[32m+[m[32m# See http://ros.org/doc/api/catkin/html/adv_user_guide/variables.html[m
[32m+[m
[32m+[m[32m## Mark executable scripts (Python etc.) for installation[m
[32m+[m[32m## in contrast to setup.py, you can choose the destination[m
[32m+[m[32m# install(PROGRAMS[m
[32m+[m[32m#   scripts/my_python_script[m
[32m+[m[32m#   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}[m
[32m+[m[32m# )[m
[32m+[m
[32m+[m[32m## Mark executables for installation[m
[32m+[m[32m## See http://docs.ros.org/melodic/api/catkin/html/howto/format1/building_executables.html[m
[32m+[m[32m# install(TARGETS ${PROJECT_NAME}_node[m
[32m+[m[32m#   RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}[m
[32m+[m[32m# )[m
[32m+[m
[32m+[m[32m## Mark libraries for installation[m
[32m+[m[32m## See http://docs.ros.org/melodic/api/catkin/html/howto/format1/building_libraries.html[m
[32m+[m[32m# install(TARGETS ${PROJECT_NAME}[m
[32m+[m[32m#   ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}[m
[32m+[m[32m#   LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}[m
[32m+[m[32m#   RUNTIME DESTINATION ${CATKIN_GLOBAL_BIN_DESTINATION}[m
[32m+[m[32m# )[m
[32m+[m
[32m+[m[32m## Mark cpp header files for installation[m
[32m+[m[32m# install(DIRECTORY include/${PROJECT_NAME}/[m
[32m+[m[32m#   DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}[m
[32m+[m[32m#   FILES_MATCHING PATTERN "*.h"[m
[32m+[m[32m#   PATTERN ".svn" EXCLUD