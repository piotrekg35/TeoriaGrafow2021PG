add_executable (grafy main.cpp)

add_custom_target(run_grafy DEPENDS grafy
    COMMAND
        ${CMAKE_CURRENT_BINARY_DIR}/grafy
)
