# Examples

This directory contains example programs demonstrating how to use the Fortran template modules.

## Files

- `simple_example.f90` - Basic usage of math_utils and string_utils modules

## Building Examples

To build and run the examples:

```bash
# From the project root
cd build

# Build the main project first
cmake --build .

# Compile the simple example
gfortran -I../build/src -o simple_example ../examples/simple_example.f90 -L. -lfortran_template_lib

# Run the example
./simple_example
```

## Adding New Examples

1. Create your Fortran program in this directory
2. Follow the naming convention: `your_example.f90`
3. Update this README to include your example
4. Consider adding it to the CMake build if it should be part of automated testing