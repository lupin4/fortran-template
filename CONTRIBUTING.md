# Contributing to Fortran Template

Thank you for your interest in contributing to this project! This document provides guidelines and information for contributors.

## Code of Conduct

This project adheres to a code of conduct. By participating, you are expected to uphold this code. Please report unacceptable behavior to the project maintainers.

## How to Contribute

### Reporting Issues

Before creating an issue, please:

1. Check if the issue already exists in the [issue tracker](../../issues)
2. Use the appropriate issue template
3. Provide as much detail as possible, including:
   - OS and compiler information
   - Steps to reproduce
   - Expected vs actual behavior
   - Code samples if applicable

### Submitting Changes

1. **Fork the repository** and create a new branch from `main`
2. **Make your changes** following the project's coding standards
3. **Test your changes** thoroughly:
   ```bash
   make clean && make test
   ```
4. **Update documentation** if needed
5. **Submit a pull request** using the provided template

### Development Setup

1. Clone your fork:
   ```bash
   git clone https://github.com/your-username/fortran-template.git
   cd fortran-template
   ```

2. Install dependencies:
   - Fortran compiler (gfortran 11+ recommended)
   - Make or CMake
   - Optional: fprettify for code formatting

3. Build and test:
   ```bash
   make all
   make test
   ```

## Coding Standards

### Fortran Style

- Use Fortran 2018 standard features
- Follow consistent indentation (4 spaces)
- Use meaningful variable and procedure names
- Add comments for complex logic
- Use `implicit none` in all program units

### Code Formatting

We use [fprettify](https://github.com/pseewald/fprettify) for code formatting:

```bash
# Install fprettify
pip install fprettify

# Format code
fprettify --config-file .fprettify.rc src/*.f90 tests/*.f90
```

### Documentation

- Update API documentation for new features
- Include examples for new functionality
- Keep README.md current
- Add comments to explain non-obvious code

## Testing

### Running Tests

```bash
# Run all tests
make test

# Or with CMake
cmake -B build && cd build && ctest
```

### Writing Tests

- Add tests for new functionality
- Follow the existing test patterns
- Use descriptive test names
- Test both success and error cases

### Continuous Integration

All pull requests are automatically tested with GitHub Actions on:
- Ubuntu Latest with gfortran
- macOS Latest with gfortran

## Release Process

1. Update version numbers in relevant files
2. Update CHANGELOG.md
3. Create and test release candidate
4. Tag release and update documentation

## Getting Help

- Create an issue for bug reports or feature requests
- Check existing documentation in the `docs/` directory
- Review the README.md for basic usage

## Recognition

Contributors will be acknowledged in the project documentation. Significant contributions may be recognized in release notes.

Thank you for contributing!