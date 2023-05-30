# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "Policy: 2 messages, 0 services")

set(MSG_I_FLAGS "-IPolicy:/home/altair/item/SubwaySystem/src/Policy/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(Policy_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/altair/item/SubwaySystem/src/Policy/msg/Rount.msg" NAME_WE)
add_custom_target(_Policy_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "Policy" "/home/altair/item/SubwaySystem/src/Policy/msg/Rount.msg" ""
)

get_filename_component(_filename "/home/altair/item/SubwaySystem/src/Policy/msg/TagPoint.msg" NAME_WE)
add_custom_target(_Policy_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "Policy" "/home/altair/item/SubwaySystem/src/Policy/msg/TagPoint.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(Policy
  "/home/altair/item/SubwaySystem/src/Policy/msg/Rount.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Policy
)
_generate_msg_cpp(Policy
  "/home/altair/item/SubwaySystem/src/Policy/msg/TagPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Policy
)

### Generating Services

### Generating Module File
_generate_module_cpp(Policy
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Policy
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(Policy_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(Policy_generate_messages Policy_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/altair/item/SubwaySystem/src/Policy/msg/Rount.msg" NAME_WE)
add_dependencies(Policy_generate_messages_cpp _Policy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/altair/item/SubwaySystem/src/Policy/msg/TagPoint.msg" NAME_WE)
add_dependencies(Policy_generate_messages_cpp _Policy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Policy_gencpp)
add_dependencies(Policy_gencpp Policy_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Policy_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(Policy
  "/home/altair/item/SubwaySystem/src/Policy/msg/Rount.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Policy
)
_generate_msg_eus(Policy
  "/home/altair/item/SubwaySystem/src/Policy/msg/TagPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Policy
)

### Generating Services

### Generating Module File
_generate_module_eus(Policy
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Policy
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(Policy_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(Policy_generate_messages Policy_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/altair/item/SubwaySystem/src/Policy/msg/Rount.msg" NAME_WE)
add_dependencies(Policy_generate_messages_eus _Policy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/altair/item/SubwaySystem/src/Policy/msg/TagPoint.msg" NAME_WE)
add_dependencies(Policy_generate_messages_eus _Policy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Policy_geneus)
add_dependencies(Policy_geneus Policy_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Policy_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(Policy
  "/home/altair/item/SubwaySystem/src/Policy/msg/Rount.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Policy
)
_generate_msg_lisp(Policy
  "/home/altair/item/SubwaySystem/src/Policy/msg/TagPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Policy
)

### Generating Services

### Generating Module File
_generate_module_lisp(Policy
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Policy
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(Policy_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(Policy_generate_messages Policy_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/altair/item/SubwaySystem/src/Policy/msg/Rount.msg" NAME_WE)
add_dependencies(Policy_generate_messages_lisp _Policy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/altair/item/SubwaySystem/src/Policy/msg/TagPoint.msg" NAME_WE)
add_dependencies(Policy_generate_messages_lisp _Policy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Policy_genlisp)
add_dependencies(Policy_genlisp Policy_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Policy_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(Policy
  "/home/altair/item/SubwaySystem/src/Policy/msg/Rount.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Policy
)
_generate_msg_nodejs(Policy
  "/home/altair/item/SubwaySystem/src/Policy/msg/TagPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Policy
)

### Generating Services

### Generating Module File
_generate_module_nodejs(Policy
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Policy
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(Policy_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(Policy_generate_messages Policy_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/altair/item/SubwaySystem/src/Policy/msg/Rount.msg" NAME_WE)
add_dependencies(Policy_generate_messages_nodejs _Policy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/altair/item/SubwaySystem/src/Policy/msg/TagPoint.msg" NAME_WE)
add_dependencies(Policy_generate_messages_nodejs _Policy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Policy_gennodejs)
add_dependencies(Policy_gennodejs Policy_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Policy_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(Policy
  "/home/altair/item/SubwaySystem/src/Policy/msg/Rount.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Policy
)
_generate_msg_py(Policy
  "/home/altair/item/SubwaySystem/src/Policy/msg/TagPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Policy
)

### Generating Services

### Generating Module File
_generate_module_py(Policy
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Policy
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(Policy_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(Policy_generate_messages Policy_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/altair/item/SubwaySystem/src/Policy/msg/Rount.msg" NAME_WE)
add_dependencies(Policy_generate_messages_py _Policy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/altair/item/SubwaySystem/src/Policy/msg/TagPoint.msg" NAME_WE)
add_dependencies(Policy_generate_messages_py _Policy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Policy_genpy)
add_dependencies(Policy_genpy Policy_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Policy_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Policy)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Policy
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(Policy_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(Policy_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Policy)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Policy
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(Policy_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(Policy_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Policy)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Policy
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(Policy_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(Policy_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Policy)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Policy
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(Policy_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(Policy_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Policy)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Policy\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Policy
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(Policy_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(Policy_generate_messages_py geometry_msgs_generate_messages_py)
endif()
