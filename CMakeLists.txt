cmake_minimum_required(VERSION 3.12)
project(fortran-template
        VERSION 1.0.0
        DESCRIPTION "A template for Fortran projects"
        LANGUAGES Fortran)

# Set Fortran standard
set(CMAKE_Fortran_STANDARD 2018)
set(CMAKE_Fortran_STANDARD_REQUIRED ON)

# Compiler flags
if(CMAKE_Fortran_COMPILER_ID STREQUAL "GNU")
    set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -Wall -Wextra -fcheck=all")
    set(CMAKE_Fortran_FLAGS_DEBUG "-g -O0")
    set(CMAKE_Fortran_FLAGS_RELEASE "-O3")
elseif(CMAKE_Fortran_COMPILER_ID STREQUAL "Intel")
    set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -warn all -check all")
    set(CMAKE_Fortran_FLAGS_DEBUG "-g -O0")
    set(CMAKE_Fortran_FLAGS_RELEASE "-O3")
endif()

# Build type
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif()

# Source files
set(SOURCES
    src/math_utils.f90
    src/main.f90
)

# Create main executable
add_executable(${PROJECT_NAME} ${SOURCES})

# Set module directory
set_target_properties(${PROJECT_NAME} PROPERTIES
    Fortran_MODULE_DIRECTORY ${CMAKE_BINARY_DIR}/modules
)

# Include module directory
target_include_directories(${PROJECT_NAME} PRIVATE ${CMAKE_BINARY_DIR}/modules)

# Enable testing
enable_testing()

# Test executable
add_executable(test_math_utils
    src/math_utils.f90
    tests/test_math_utils.f90
)

set_target_properties(test_math_utils PROPERTIES
    Fortran_MODULE_DIRECTORY ${CMAKE_BINARY_DIR}/modules
)

target_include_directories(test_math_utils PRIVATE ${CMAKE_BINARY_DIR}/modules)

# Add test
add_test(NAME math_utils_test COMMAND test_math_utils)

# Install targets
install(TARGETS ${PROJECT_NAME}
        RUNTIME DESTINATION bin)

# Package configuration
set(CPACK_PACKAGE_NAME ${PROJECT_NAME})
set(CPACK_PACKAGE_VERSION ${PROJECT_VERSION})
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY ${PROJECT_DESCRIPTION})
set(CPACK_GENERATOR "TGZ")

include(CPack)