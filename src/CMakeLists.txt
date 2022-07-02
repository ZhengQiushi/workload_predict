##################################################################################
#SRC CMAKELISTS
##################################################################################

# --[ Peloton library

# creates 'srcs' lists
peloton_pickup_peloton_sources(${PROJECT_SOURCE_DIR})

add_library(peloton SHARED ${srcs})


message("${Peloton_LINKER_LIBS}")

target_link_libraries(peloton PUBLIC ${Peloton_LINKER_LIBS}) # peloton-proto pg_query)

peloton_default_properties(peloton)
set_target_properties(peloton PROPERTIES
    VERSION   ${PELOTON_TARGET_VERSION}
    SOVERSION ${PELOTON_TARGET_SOVERSION}
)

##################################################################################

# --[ Peloton

set(peloton_main ${PROJECT_SOURCE_DIR}/src/main/main.cpp)
add_executable(peloton-bin ${peloton_main})
target_link_libraries(peloton-bin peloton)
set_target_properties(peloton-bin PROPERTIES OUTPUT_NAME peloton)

##################################################################################

# --[ link to jemalloc
set(EXE_LINK_LIBRARIES ${JEMALLOC_LIBRARIES})
set(EXE_LINK_FLAGS "-Wl,--no-as-needed")
set(EXE_LIST peloton-bin)
foreach(exe_name ${EXE_LIST})
    message("${exe_name}")
    # target_link_libraries(${exe_name} ${EXE_LINK_LIBRARIES})
    if (LINUX)
        set_target_properties(${exe_name} PROPERTIES LINK_FLAGS ${EXE_LINK_FLAGS})
    endif ()
endforeach()

