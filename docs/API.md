# API Documentation

## Modules

### math_utils

Mathematical utility functions module demonstrating common Fortran patterns and best practices.

#### Functions

##### factorial(n) → integer

Calculate factorial of a non-negative integer.

**Parameters:**
- `n` (integer): Input integer (must be >= 0)

**Returns:**
- integer: Factorial of n, or -1 for error cases

**Example:**
```fortran
use math_utils, only: factorial
integer :: result
result = factorial(5)  ! Returns 120
```

##### fibonacci(n) → integer

Calculate the nth Fibonacci number.

**Parameters:**
- `n` (integer): Position in Fibonacci sequence (n >= 0)

**Returns:**
- integer: nth Fibonacci number, or -1 for error cases

**Example:**
```fortran
use math_utils, only: fibonacci
integer :: result
result = fibonacci(10)  ! Returns 55
```

##### is_prime(n) → logical

Check if a number is prime.

**Parameters:**
- `n` (integer): Input integer to test

**Returns:**
- logical: True if n is prime, false otherwise

**Example:**
```fortran
use math_utils, only: is_prime
logical :: result
result = is_prime(17)  ! Returns .true.
```