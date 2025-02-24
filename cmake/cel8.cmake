set(BUILD_WITH_CEL8_DEFAULT TRUE)

option(BUILD_WITH_CEL8 "cel8 Enabled" ${BUILD_WITH_CEL8_DEFAULT})
message("BUILD_WITH_CEL8: ${BUILD_WITH_CEL8}")

if(BUILD_WITH_CEL8)
  set(CEL8_DIR ${THIRDPARTY_DIR}/cel8)
  set(CEL8_FILES
    ${CEL8_DIR}/cel8.h)

  add_library(cel8 INTERFACE ${CEL8_FILES})
endif()