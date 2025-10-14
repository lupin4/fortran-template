!> Test program for string_utils module
!! Simple unit tests for string utility functions
program test_string_utils
    use, intrinsic :: iso_fortran_env, only: output_unit, error_unit, int32
    use string_utils, only: to_upper, to_lower, trim_whitespace, count_words, reverse_string
    implicit none

    integer(int32) :: test_count, failed_count

    test_count = 0
    failed_count = 0

    write(output_unit, '(A)') 'Running string_utils tests...'
    write(output_unit, *)

    ! Test to_upper function
    call run_test('Convert to uppercase', &
        trim(to_upper('hello world')) == 'HELLO WORLD', test_count, failed_count)
    call run_test('Uppercase with numbers', &
        trim(to_upper('test123')) == 'TEST123', test_count, failed_count)

    ! Test to_lower function
    call run_test('Convert to lowercase', &
        trim(to_lower('HELLO WORLD')) == 'hello world', test_count, failed_count)
    call run_test('Lowercase with numbers', &
        trim(to_lower('TEST123')) == 'test123', test_count, failed_count)

    ! Test trim_whitespace function
    call run_test('Trim leading/trailing spaces', &
        trim_whitespace('  hello world  ') == 'hello world', test_count, failed_count)
    call run_test('Trim empty string', &
        trim_whitespace('   ') == '', test_count, failed_count)

    ! Test count_words function
    call run_test('Count words - simple', &
        count_words('hello world') == 2, test_count, failed_count)
    call run_test('Count words - multiple spaces', &
        count_words('  hello   world   fortran  ') == 3, test_count, failed_count)
    call run_test('Count words - empty string', &
        count_words('') == 0, test_count, failed_count)

    ! Test reverse_string function
    call run_test('Reverse string', &
        trim(reverse_string('hello')) == 'olleh', test_count, failed_count)
    call run_test('Reverse palindrome', &
        trim(reverse_string('racecar')) == 'racecar', test_count, failed_count)

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

end program test_string_utils