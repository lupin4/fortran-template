---
project: Modern Fortran Template
summary: A comprehensive Fortran template with modern practices
author: Template User
author_description: Modern Fortran Developer
email: user@example.com
src_dir: ./src
output_dir: ./docs
project_github: https://github.com/lupin4/fortran-template
project_website: https://github.com/lupin4/fortran-template
display: public
source: true
graph: true
sort: alpha
print_creation_date: true
creation_date: %Y-%m-%d %H:%M %z
md_extensions: markdown.extensions.toc
extra_mods: iso_fortran_env:https://gcc.gnu.org/onlinedocs/gfortran/ISO_005fFORTRAN_005fENV.html

brief_description: |
    This is a modern Fortran template repository that provides a solid foundation 
    for creating new Fortran projects. It includes best practices, automated 
    testing, continuous integration, and comprehensive documentation.

license: mit
---

# Modern Fortran Template

A comprehensive template for modern Fortran projects featuring:

- Modern Fortran 2008+ standards
- Cross-platform CMake build system  
- Comprehensive test suite
- GitHub Actions CI/CD
- Documentation generation with FORD
- VSCode development environment

## Quick Start

```bash
git clone https://github.com/yourusername/your-project.git
cd your-project
mkdir build && cd build
cmake ..
cmake --build .
ctest
```

## Modules

The template includes example modules demonstrating modern Fortran practices:

- `math_utils` - Mathematical utility functions
- `string_utils` - String manipulation utilities

## Usage

See the examples directory for usage demonstrations.