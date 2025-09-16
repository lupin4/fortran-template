!> Simple example demonstrating the template modules
!! This example shows how to use the math_utils and string_utils modules
program simple_example
    use, intrinsic :: iso_fortran_env, only: output_unit, int32
    use math_utils, only: factorial, is_prime, PI
    use string_utils, only: to_upper, count_words
    implicit none

    character(len=50) :: sample_text
    integer(int32) :: number, fact_result, word_count

    ! String operations example
    sample_text = "Hello Modern Fortran"
    write(output_unit, '(A)') 'Original: ' // trim(sample_text)
    write(output_unit, '(A)') 'Uppercase: ' // trim(to_upper(sample_text))
    
    word_count = count_words(sample_text)
    write(output_unit, '(A, I0)') 'Number of words: ', word_count
    write(output_unit, *)

    ! Math operations example
    number = 6
    fact_result = factorial(number)
    write(output_unit, '(A, I0, A, I0)') 'Factorial of ', number, ' is ', fact_result
    
    write(output_unit, '(A, I0, A, L1)') 'Is ', number, ' prime? ', is_prime(number)
    write(output_unit, '(A, F8.5)') 'Value of PI: ', PI

end program simple_example