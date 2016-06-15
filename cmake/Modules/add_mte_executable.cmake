function(add_mte_executable exe)
  add_executable(${exe} ${ARGN})
  target_link_libraries(${exe} ${MTE_LIBRARIES})
endfunction(add_mte_executable)
