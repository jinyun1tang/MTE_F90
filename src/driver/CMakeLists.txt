set(MTE_DRIVER_SOURCES
  shapeTest.F90
)
include_directories(${CMAKE_BINARY_DIR}/src/modules)

include(add_mte_library)
add_mte_library(driver ${MTE_DRIVER_SOURCES})

set(MTE_LIBRARIES driver;${MTE_LIBRARIES} PARENT_SCOPE)
set(MTE_LIBRARIES driver;${MTE_LIBRARIES})

link_libraries(${MTE_LIBRARIES};${MTE_TPLS})
include(add_mte_executable)
add_mte_executable(mte_shape shapeTest.F90)

if (NOT CMAKE_INSTALL_PREFIX STREQUAL "INSTALL_DISABLLED")
  install(TARGETS mte_shape DESTINATION bin)
  file(GLOB HEADS *.h *.mod)
  install(FILES ${HEADS} DESTINATION include/driver)
endif()
