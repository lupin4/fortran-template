# Modern Fortran Template

![CI](https://github.com/lupin4/fortran-template/workflows/CI/badge.svg)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A modern, comprehensive Fortran project template featuring best practices, automated testing, and continuous integration. This template provides a solid foundation for creating new Fortran projects with contemporary tooling and project structure.

## 🚀 Features

- **Modern Fortran**: Uses Fortran 2008+ standards with proper module organization
- **Cross-Platform Build System**: CMake-based build system supporting Linux, macOS, and Windows
- **Automated Testing**: Comprehensive test suite with CTest integration
- **Continuous Integration**: GitHub Actions workflows for automated testing across multiple platforms
- **Documentation Ready**: Structured for automatic documentation generation
- **Example Code**: Complete working examples demonstrating best practices
- **Development Tools**: VSCode configuration and development environment setup

## 📁 Project Structure

```
fortran-template/
├── src/                     # Source code
│   ├── math_utils.f90      # Mathematical utilities module
│   ├── string_utils.f90    # String manipulation utilities
│   ├── main.f90           # Example main program
│   └── CMakeLists.txt     # Source build configuration
├── tests/                  # Test suite
│   ├── test_math_utils.f90
│   ├── test_string_utils.f90
│   └── CMakeLists.txt     # Test build configuration
├── docs/                   # Documentation
├── examples/               # Usage examples
├── cmake/                  # CMake modules and find scripts
├── .github/               # GitHub Actions workflows
│   └── workflows/
│       └── ci.yml         # Continuous integration
├── .vscode/               # VSCode configuration
├── CMakeLists.txt         # Main build configuration
├── .gitignore            # Git ignore rules
└── README.md             # This file
```

## 🛠️ Requirements

### Minimum Requirements
- **Fortran Compiler**: gfortran 9.0+ or Intel Fortran 2019+
- **CMake**: 3.20 or later
- **Operating System**: Linux, macOS, or Windows

### Recommended Tools
- **Build System**: Ninja (faster builds)
- **Editor**: VSCode with Modern Fortran extension
- **Documentation**: FORD for automatic documentation generation

## 🏗️ Building the Project

### Quick Start

```bash
# Clone the repository
git clone https://github.com/yourusername/your-fortran-project.git
cd your-fortran-project

# Create build directory
mkdir build && cd build

# Configure with CMake
cmake ..

# Build the project
cmake --build .

# Run tests
ctest --output-on-failure

# Run the demo
./src/fortran_template_demo
```

### Build Options

```bash
# Debug build
cmake .. -DCMAKE_BUILD_TYPE=Debug

# Release build with optimizations
cmake .. -DCMAKE_BUILD_TYPE=Release

# Using Ninja for faster builds
cmake .. -GNinja
ninja
```

### Platform-Specific Instructions

#### Linux/macOS
```bash
# Install gfortran (Ubuntu/Debian)
sudo apt-get install gfortran cmake

# Install gfortran (macOS with Homebrew)
brew install gfortran cmake
```

#### Windows
```bash
# Using MSYS2
pacman -S mingw-w64-x86_64-gcc-fortran mingw-w64-x86_64-cmake
```

## 🧪 Testing

The project includes a comprehensive test suite:

```bash
# Run all tests
cd build
ctest

# Run specific test
ctest -R math_utils_test

# Verbose test output
ctest --verbose
```

### Test Structure
- **Unit Tests**: Individual module testing
- **Integration Tests**: Cross-module functionality
- **Automated CI**: Tests run on multiple platforms and compiler versions

## 📚 Example Usage

```fortran
program example
    use math_utils, only: factorial, fibonacci, PI
    use string_utils, only: to_upper, count_words
    implicit none
    
    ! Mathematical operations
    print *, 'Factorial of 5:', factorial(5)
    print *, 'Fibonacci(10):', fibonacci(10)
    print *, 'PI =', PI
    
    ! String operations
    print *, 'Uppercase:', to_upper('hello world')
    print *, 'Word count:', count_words('hello world fortran')
end program example
```

## 🎯 Using This Template

### For New Projects

1. **Use GitHub Template**: Click "Use this template" button on GitHub
2. **Clone Your New Repository**:
   ```bash
   git clone https://github.com/yourusername/your-project.git
   cd your-project
   ```
3. **Customize for Your Project**:
   - Update `CMakeLists.txt` with your project name
   - Modify or replace the example modules in `src/`
   - Update this README with your project details
   - Customize the license if needed

### Customization Checklist

- [ ] Update project name in `CMakeLists.txt`
- [ ] Replace example modules with your code
- [ ] Update README with project-specific information
- [ ] Modify tests for your functionality
- [ ] Update license and copyright information
- [ ] Configure GitHub repository settings

## 🔧 Development

### Code Style
- Follow Fortran 2008+ standards
- Use explicit interfaces and pure functions where possible
- Include comprehensive comments and documentation
- Follow consistent naming conventions

### Adding New Modules
1. Create the module in `src/`
2. Add to `src/CMakeLists.txt`
3. Create corresponding tests in `tests/`
4. Update documentation

### VSCode Setup
The template includes VSCode configuration:
- Fortran language support
- Debugging configuration
- Build tasks
- Code formatting settings

## 📖 Documentation

Documentation can be generated using FORD:

```bash
# Install FORD
pip install ford

# Generate documentation (if ford.md exists)
ford ford.md
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Modern Fortran community for best practices
- CMake community for build system examples
- GitHub Actions for CI/CD workflows
- Contributors and users of this template

## 📞 Support

- **Issues**: [GitHub Issues](https://github.com/lupin4/fortran-template/issues)
- **Discussions**: [GitHub Discussions](https://github.com/lupin4/fortran-template/discussions)
- **Documentation**: Check the `docs/` directory

---

**Happy Coding with Modern Fortran! 🚀**
