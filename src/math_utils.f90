module math_utils
    ! Mathematical utility functions
    ! This module demonstrates common Fortran patterns and best practices
    
    use, intrinsic :: iso_fortran_env, only: real64, int32
    implicit none
    
    private
    public :: factorial, fibonacci, is_prime
    
    ! Module constants
    integer(int32), parameter :: max_factorial = 20
    
contains
    
    !> Calculate factorial of a non-negative integer
    !> @param n Input integer (must be >= 0)
    !> @return Factorial of n
    pure function factorial(n) result(fact)
        integer(int32), intent(in) :: n
        integer(int32) :: fact
        integer(int32) :: i
        
        if (n < 0) then
            fact = -1  ! Error indicator
            return
        end if
        
        fact = 1
        do i = 1, n
            fact = fact * i
        end do
    end function factorial
    
    !> Calculate the nth Fibonacci number
    !> @param n Position in Fibonacci sequence (n >= 0)
    !> @return nth Fibonacci number
    pure function fibonacci(n) result(fib)
        integer(int32), intent(in) :: n
        integer(int32) :: fib
        integer(int32) :: a, b, i
        
        if (n < 0) then
            fib = -1  ! Error indicator
            return
        end if
        
        if (n <= 1) then
            fib = n
            return
        end if
        
        a = 0
        b = 1
        do i = 2, n
            fib = a + b
            a = b
            b = fib
        end do
    end function fibonacci
    
    !> Check if a number is prime
    !> @param n Input integer to test
    !> @return True if n is prime, false otherwise
    pure function is_prime(n) result(prime)
        integer(int32), intent(in) :: n
        logical :: prime
        integer(int32) :: i
        
        if (n < 2) then
            prime = .false.
            return
        end if
        
        if (n == 2) then
            prime = .true.
            return
        end if
        
        if (mod(n, 2) == 0) then
            prime = .false.
            return
        end if
        
        prime = .true.
        do i = 3, int(sqrt(real(n, real64))), 2
            if (mod(n, i) == 0) then
                prime = .false.
                exit
            end if
        end do
    end function is_prime
    
end module math_utils