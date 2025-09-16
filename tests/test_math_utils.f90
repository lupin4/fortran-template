!> Test program for math_utils module
!! Simple unit tests for mathematical utility functions
program test_math_utils
    use, intrinsic :: iso_fortran_env, only: output_unit, error_unit, int32, real64
    use math_utils, only: factorial, fibonacci, is_prime, gcd, PI, E
    implicit none

    integer(int32) :: test_count, failed_count
    logical :: test_result

    test_count = 0
    failed_count = 0

    write(output_unit, '(A)') 'Running math_utils tests...'
    write(output_unit, *)

    ! Test factorial function
    call run_test('Factorial of 0', factorial(0) == 1, test_count, failed_count)
    call run_test('Factorial of 5', factorial(5) == 120, test_count, failed_count)
    call run_test('Factorial negative input', factorial(-1) == -1, test_count, failed_count)

    ! Test fibonacci function
    call run_test('Fibonacci of 0', fibonacci(0) == 0, test_count, failed_count)
    call run_test('Fibonacci of 1', fibonacci(1) == 1, test_count, failed_count)
    call run_test('Fibonacci of 10', fibonacci(10) == 55, test_count, failed_count)

    ! Test is_prime function
    call run_test('2 is prime', is_prime(2), test_count, failed_count)
    call run_test('17 is prime', is_prime(17), test_count, failed_count)
    call run_test('4 is not prime', .not. is_prime(4), test_count, failed_count)
    call run_test('1 is not prime', .not. is_prime(1), test_count, failed_count)

    ! Test gcd function
    call run_test('GCD(48, 18) = 6', gcd(48, 18) == 6, test_count, failed_count)
    call run_test('GCD(7, 13) = 1', gcd(7, 13) == 1, test_count, failed_count)

    ! Test constants (approximate)
    call run_test('PI constant', abs(PI - 3.14159265359_real64) < 1.0e-10_real64, test_count, failed_count)
    call run_test('E constant', abs(E - 2.71828182846_real64) < 1.0e-10_real64, test_count, failed_count)

    ! Summary
    write(output_unit, *)
    write(output_unit, '(A, I0, A, I0, A)') 'Tests completed: ', test_count - failed_count, &
        ' passed, ', failed_count, ' failed'
    
    if (failed_count > 0) then
        write(error_unit, '(A)') 'Some tests failed!'
        stop 1
    else
        write(output_unit, '(A)') 'All tests passed!'
    end if

contains

    !> Run a single test and update counters
    subroutine run_test(test_name, condition, test_count, failed_count)
        character(len=*), intent(in) :: test_name
        logical, intent(in) :: condition
        integer(int32), intent(inout) :: test_count, failed_count

        test_count = test_count + 1
        if (condition) then
            write(output_unit, '(A, A, A)') '[PASS] ', test_name
        else
            write(output_unit, '(A, A, A)') '[FAIL] ', test_name
            failed_count = failed_count + 1
        end if
    end subroutine run_test

end program test_math_utils