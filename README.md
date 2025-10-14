# Modern Fortran Template

![CI](https://github.com/lupin4/fortran-template/workflows/CI/badge.svg)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A modern, comprehensive Fortran project template featuring best practices, automated testing, and continuous integration. This template provides a solid foundation for creating new Fortran projects with contemporary tooling and project structure.

## 🚀 Features

- **Modern Fortran**: Uses Fortran 2008+ standards with proper module organization
- **FPM Build System**: Modern Fortran Package Manager for easy dependency management
- **Shared Library Support**: Build scripts for creating DLLs with gfortran
- **Automated Testing**: Comprehensive test suite with fpm test integration
- **Continuous Integration**: GitHub Actions workflows for automated testing across multiple platforms
- **Documentation Ready**: Structured for automatic documentation generation
- **Example Code**: Complete working examples demonstrating best practices
- **Development Tools**: VSCode configuration and development environment setup

## 📁 Project Structure

```
fortran-template/
├── src/                     # Library source code
│   ├── math_utils.f90      # Mathematical utilities module
│   └── string_utils.f90    # String manipulation utilities
├── app/                    # Application source code
│   └── main.f90           # Example main program
├── test/                   # Test suite
│   ├── test_math_utils.f90
│   └── test_string_utils.f90
├── example/                # Usage examples
│   └── simple_example.f90
├── docs/                   # Documentation
├── .github/               # GitHub Actions workflows
│   └── workflows/
│       └── ci.yml         # Continuous integration
├── .vscode/               # VSCode configuration
├── fpm.toml               # FPM configuration
├── build_dll.sh           # Shared library build script
├── .gitignore            # Git ignore rules
└── README.md             # This file
```

## 🛠️ Requirements

### Minimum Requirements
- **Fortran Compiler**: gfortran 9.0+ or Intel Fortran 2019+
- **FPM**: Fortran Package Manager (latest version)
- **Operating System**: Linux, macOS, or Windows

### Recommended Tools
- **Editor**: VSCode with Modern Fortran extension
- **Documentation**: FORD for automatic documentation generation

## 🏗️ Building the Project

### Quick Start

```bash
# Clone the repository
git clone https://github.com/yourusername/your-fortran-project.git
cd your-fortran-project

# Build the project with fpm
fpm build

# Run tests
fpm test

# Run the demo
fpm run fortran-template-demo

# Build shared library (DLL)
./build_dll.sh
```

### Build Options

```bash
# Build only the library
fpm build --target fortran-template

# Build specific executable
fpm build --target fortran-template-demo

# Run tests with verbose output
fpm test --verbose
ninja
```

### Platform-Specific Instructions

#### Linux/macOS
```bash
# Install gfortran (Ubuntu/Debian)
sudo apt-get install gfortran

# Install gfortran (macOS with Homebrew)
brew install gfortran

# Install fpm
curl -LOs https://github.com/fortran-lang/fpm/releases/latest/download/fpm-VERSION-OS-ARCH
chmod +x fpm-VERSION-OS-ARCH
sudo mv fpm-VERSION-OS-ARCH /usr/local/bin/fpm
```

#### Windows
```bash
# Using MSYS2
pacman -S mingw-w64-x86_64-gcc-fortran

# Install fpm (download from GitHub releases)
# https://github.com/fortran-lang/fpm/releases
```

### Shared Library (DLL) Creation

The template includes a script to create shared libraries:

```bash
# Make the script executable
chmod +x build_dll.sh

# Build shared library
./build_dll.sh
```

This creates:
- `build/shared/libfortran_template.so` (Linux/macOS) or `fortran_template.dll` (Windows)
- Module files in `build/shared/`

## 🧪 Testing

The project includes a comprehensive test suite:

```bash
# Run all tests
fpm test

# Run specific test
fpm test test-math-utils

# Run tests with verbose output
fpm test --verbose
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
