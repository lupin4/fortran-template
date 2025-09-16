!> Main program demonstrating the Fortran template
!! This program showcases the functionality provided by the template modules.
program main
    use, intrinsic :: iso_fortran_env, only: output_unit, real64, int32
    use math_utils, only: factorial, fibonacci, is_prime, gcd, PI, E
    use string_utils, only: to_upper, to_lower, trim_whitespace, count_words, reverse_string
    implicit none

    ! Variables for demonstrations
    character(len=100) :: test_string
    integer(int32) :: n, result_int
    logical :: result_logical

    ! Print header
    write(output_unit, '(A)') repeat('=', 60)
    write(output_unit, '(A)') '    Modern Fortran Template Demonstration'
    write(output_unit, '(A)') repeat('=', 60)
    write(output_unit, *)

    ! Demonstrate mathematical utilities
    write(output_unit, '(A)') 'Mathematical Utilities:'
    write(output_unit, '(A)') repeat('-', 25)
    
    ! Constants
    write(output_unit, '(A, F10.6)') 'PI = ', PI
    write(output_unit, '(A, F10.6)') 'E  = ', E
    write(output_unit, *)

    ! Factorial
    n = 5
    result_int = factorial(n)
    write(output_unit, '(A, I0, A, I0)') 'Factorial of ', n, ' = ', result_int

    ! Fibonacci
    n = 10
    result_int = fibonacci(n)
    write(output_unit, '(A, I0, A, I0)') 'Fibonacci number ', n, ' = ', result_int

    ! Prime check
    n = 17
    result_logical = is_prime(n)
    write(output_unit, '(A, I0, A, L1)') 'Is ', n, ' prime? ', result_logical

    ! GCD
    result_int = gcd(48, 18)
    write(output_unit, '(A, I0)') 'GCD(48, 18) = ', result_int
    write(output_unit, *)

    ! Demonstrate string utilities
    write(output_unit, '(A)') 'String Utilities:'
    write(output_unit, '(A)') repeat('-', 17)

    test_string = '  Hello World Fortran  '
    write(output_unit, '(A)') 'Original string: "' // trim(test_string) // '"'
    write(output_unit, '(A)') 'Uppercase: "' // trim(to_upper(test_string)) // '"'
    write(output_unit, '(A)') 'Lowercase: "' // trim(to_lower(test_string)) // '"'
    write(output_unit, '(A)') 'Trimmed: "' // trim_whitespace(test_string) // '"'
    write(output_unit, '(A, I0)') 'Word count: ', count_words(test_string)
    write(output_unit, '(A)') 'Reversed: "' // trim(reverse_string(trim_whitespace(test_string))) // '"'
    write(output_unit, *)

    ! Footer
    write(output_unit, '(A)') repeat('=', 60)
    write(output_unit, '(A)') 'Template demonstration completed successfully!'
    write(output_unit, '(A)') repeat('=', 60)

end program main