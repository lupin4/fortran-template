program test_math_utils
    ! Unit tests for math_utils module
    ! This demonstrates testing patterns for Fortran modules
    
    use, intrinsic :: iso_fortran_env, only: output_unit, error_unit, int32
    use math_utils, only: factorial, fibonacci, is_prime
    implicit none
    
    ! Test counters
    integer :: tests_run = 0
    integer :: tests_passed = 0
    
    ! Run all tests
    call test_factorial()
    call test_fibonacci()
    call test_is_prime()
    
    ! Print summary
    write(output_unit, '(A)') ""
    write(output_unit, '(A, I0, A, I0, A)') "Tests completed: ", tests_passed, "/", tests_run, " passed"
    
    if (tests_passed == tests_run) then
        write(output_unit, '(A)') "All tests PASSED!"
    else
        write(error_unit, '(A)') "Some tests FAILED!"
        stop 1
    end if
    
contains
    
    subroutine test_factorial()
        write(output_unit, '(A)') "Testing factorial function..."
        
        call assert_equal(factorial(0), 1, "factorial(0)")
        call assert_equal(factorial(1), 1, "factorial(1)")
        call assert_equal(factorial(5), 120, "factorial(5)")
        call assert_equal(factorial(-1), -1, "factorial(-1) error case")
    end subroutine test_factorial
    
    subroutine test_fibonacci()
        write(output_unit, '(A)') "Testing fibonacci function..."
        
        call assert_equal(fibonacci(0), 0, "fibonacci(0)")
        call assert_equal(fibonacci(1), 1, "fibonacci(1)")
        call assert_equal(fibonacci(10), 55, "fibonacci(10)")
        call assert_equal(fibonacci(-1), -1, "fibonacci(-1) error case")
    end subroutine test_fibonacci
    
    subroutine test_is_prime()
        write(output_unit, '(A)') "Testing is_prime function..."
        
        call assert_true(is_prime(2), "is_prime(2)")
        call assert_true(is_prime(17), "is_prime(17)")
        call assert_false(is_prime(1), "is_prime(1)")
        call assert_false(is_prime(4), "is_prime(4)")
        call assert_false(is_prime(15), "is_prime(15)")
    end subroutine test_is_prime
    
    subroutine assert_equal(actual, expected, test_name)
        integer(int32), intent(in) :: actual, expected
        character(len=*), intent(in) :: test_name
        
        tests_run = tests_run + 1
        if (actual == expected) then
            tests_passed = tests_passed + 1
            write(output_unit, '(A, A, A)') "  PASS ", test_name, ""
        else
            write(error_unit, '(A, A, A, I0, A, I0)') "  FAIL ", test_name, " expected ", expected, ", got ", actual
        end if
    end subroutine assert_equal
    
    subroutine assert_true(actual, test_name)
        logical, intent(in) :: actual
        character(len=*), intent(in) :: test_name
        
        tests_run = tests_run + 1
        if (actual) then
            tests_passed = tests_passed + 1
            write(output_unit, '(A, A, A)') "  PASS ", test_name, ""
        else
            write(error_unit, '(A, A, A)') "  FAIL ", test_name, " expected true, got false"
        end if
    end subroutine assert_true
    
    subroutine assert_false(actual, test_name)
        logical, intent(in) :: actual
        character(len=*), intent(in) :: test_name
        
        tests_run = tests_run + 1
        if (.not. actual) then
            tests_passed = tests_passed + 1
            write(output_unit, '(A, A, A)') "  PASS ", test_name, ""
        else
            write(error_unit, '(A, A, A)') "  FAIL ", test_name, " expected false, got true"
        end if
    end subroutine assert_false
    
end program test_math_utils