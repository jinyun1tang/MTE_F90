set(MTE_MODULES_SOURCES
 appleType.F90
 shapeType.F90
)

include(add_MTE_library)
add_mte_library(modules ${MTE_MODULES_SOURCES})

set(MTE_LIBRARIES modules;${MTE_LIBRARIES} PARENT_SCOPE)
set(MTE_LIBRARIES modules;${MTE_LIBRARIES})

link_libraries(${MTE_LIBRARIES};${MTE_TPLS})

if (NOT CMAKE_INSTALL_PREFIX STREQUAL "INSTALL_DISABLLED")
  install(TARGETS modules DESTINATION lib)
  file(GLOB HEADERS *.h)
  install(FILES ${HEADERS} DESTINATION include/modules)
endif()
