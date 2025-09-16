add_library(fortran_template_lib
    math_utils.f90
    string_utils.f90
)

# Set module output directory
set_target_properties(fortran_template_lib PROPERTIES
    Fortran_MODULE_DIRECTORY ${CMAKE_BINARY_DIR}/src
)

# Create an executable example
add_executable(fortran_template_demo
    main.f90
)

target_link_libraries(fortran_template_demo fortran_template_lib)

# Install targets
install(TARGETS fortran_template_lib fortran_template_demo
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
    RUNTIME DESTINATION bin
)

# Install module files
install(DIRECTORY ${CMAKE_BINARY_DIR}/src/
    DESTINATION include
    FILES_MATCHING PATTERN "*.mod"
)