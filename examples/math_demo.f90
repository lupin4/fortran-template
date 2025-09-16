program example_math_demo
    ! Example program demonstrating the math_utils module
    ! This shows how to use the template in practice
    
    use, intrinsic :: iso_fortran_env, only: output_unit, int32
    use math_utils, only: factorial, fibonacci, is_prime
    implicit none
    
    integer(int32) :: i
    
    write(output_unit, '(A)') "=== Math Utils Example ==="
    write(output_unit, '(A)') ""
    
    ! Demonstrate factorial function
    write(output_unit, '(A)') "Factorial examples:"
    do i = 0, 10
        write(output_unit, '(A, I0, A, I0)') "  ", i, "! = ", factorial(i)
    end do
    write(output_unit, '(A)') ""
    
    ! Demonstrate Fibonacci function
    write(output_unit, '(A)') "Fibonacci examples:"
    do i = 0, 15
        write(output_unit, '(A, I0, A, I0)') "  F(", i, ") = ", fibonacci(i)
    end do
    write(output_unit, '(A)') ""
    
    ! Demonstrate prime checking
    write(output_unit, '(A)') "Prime number check (2-30):"
    do i = 2, 30
        if (is_prime(i)) then
            write(output_unit, '(A, I0, A)') "  ", i, " is prime"
        end if
    end do
    
end program example_math_demo