!> Mathematical utilities module
!! This module provides common mathematical functions and constants
!! using modern Fortran practices.
module math_utils
    use, intrinsic :: iso_fortran_env, only: real64, int32
    implicit none
    private

    ! Public constants
    real(real64), parameter, public :: PI = 4.0_real64 * atan(1.0_real64)
    real(real64), parameter, public :: E = exp(1.0_real64)

    ! Public procedures
    public :: factorial
    public :: fibonacci
    public :: is_prime
    public :: gcd

contains

    !> Calculate factorial of a non-negative integer
    !! @param n Input integer (must be >= 0)
    !! @return Factorial of n
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
    !! @param n Position in Fibonacci sequence (n >= 0)
    !! @return nth Fibonacci number
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
    !! @param n Integer to check
    !! @return .true. if n is prime, .false. otherwise
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
        do i = 3, int(sqrt(real(n))), 2
            if (mod(n, i) == 0) then
                prime = .false.
                return
            end if
        end do
    end function is_prime

    !> Calculate greatest common divisor using Euclidean algorithm
    !! @param a First integer
    !! @param b Second integer
    !! @return GCD of a and b
    pure function gcd(a, b) result(result)
        integer(int32), intent(in) :: a, b
        integer(int32) :: result
        integer(int32) :: temp, x, y

        x = abs(a)
        y = abs(b)

        do while (y /= 0)
            temp = y
            y = mod(x, y)
            x = temp
        end do

        result = x
    end function gcd

end module math_utils