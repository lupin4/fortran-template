# Test for math utilities
add_executable(test_math_utils
    test_math_utils.f90
)

target_link_libraries(test_math_utils fortran_template_lib)

# Test for string utilities
add_executable(test_string_utils
    test_string_utils.f90
)

target_link_libraries(test_string_utils fortran_template_lib)

# Register tests
add_test(NAME math_utils_test COMMAND test_math_utils)
add_test(NAME string_utils_test COMMAND test_string_utils)