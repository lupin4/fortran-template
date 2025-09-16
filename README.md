# Fortran Template

[![CI](https://github.com/lupin4/fortran-template/workflows/CI/badge.svg)](https://github.com/lupin4/fortran-template/actions)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A comprehensive template for modern Fortran projects, providing a solid foundation with best practices, testing infrastructure, and CI/CD setup.

## Features

- 🏗️ **Modern Fortran**: Uses Fortran 2018 standard with proper module structure
- 🔧 **Multiple Build Systems**: Both Makefile and CMake support
- 🧪 **Testing Framework**: Built-in unit testing with example tests
- 🔄 **CI/CD**: GitHub Actions workflows for automated testing
- 📝 **Documentation**: API documentation and examples
- 🎯 **Templates**: Issue and PR templates for better collaboration
- 🎨 **Code Formatting**: Integration with fprettify for consistent style

## Quick Start

### Using this template

1. Click "Use this template" button in GitHub
2. Clone your new repository
3. Customize the project name and content
4. Start coding!

### Building the project

#### With Make (recommended)
```bash
# Build the project
make

# Run tests
make test

# Run the main program
make run

# Clean build artifacts
make clean
```

#### With CMake
```bash
# Configure
cmake -B build

# Build
cmake --build build

# Run tests
cd build && ctest
```

## Project Structure

```
.
├── src/                    # Source code
│   ├── main.f90           # Main program
│   └── math_utils.f90     # Example module
├── tests/                 # Unit tests
│   └── test_math_utils.f90
├── examples/              # Example programs
│   └── math_demo.f90
├── docs/                  # Documentation
│   └── API.md
├── .github/               # GitHub templates and workflows
│   ├── workflows/
│   ├── ISSUE_TEMPLATE/
│   └── PULL_REQUEST_TEMPLATE/
├── Makefile              # Make build system
├── CMakeLists.txt        # CMake build system
└── README.md
```

## Development

### Prerequisites

- Fortran compiler (gfortran 11+ recommended)
- Make or CMake
- Git

### Running Tests

The project includes a simple testing framework. Run tests with:

```bash
make test
```

### Code Style

This project uses [fprettify](https://github.com/pseewald/fprettify) for code formatting. Install it with:

```bash
pip install fprettify
```

Format your code with:
```bash
fprettify --indent 4 --case 1 1 1 1 src/*.f90 tests/*.f90
```

## Customization

To adapt this template for your project:

1. **Update project metadata**:
   - Change project name in `CMakeLists.txt`
   - Update `program_name` in `src/main.f90`
   - Modify this README.md

2. **Replace example code**:
   - Replace `math_utils.f90` with your modules
   - Update `main.f90` with your application logic
   - Modify or replace tests

3. **Configure build system**:
   - Update `Makefile` variables if needed
   - Adjust CMake configuration for dependencies

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Modern Fortran community for best practices
- Contributors to Fortran tooling ecosystem
