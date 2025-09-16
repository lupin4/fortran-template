# Template Setup Guide

Welcome to the Modern Fortran Template! This guide will help you customize this template for your own project.

## Quick Setup Steps

### 1. Repository Setup
- [ ] Click "Use this template" on GitHub to create your repository
- [ ] Clone your new repository locally
- [ ] Update the repository name in this README

### 2. Project Customization
- [ ] Edit `CMakeLists.txt` and change the project name from `fortran_template` to your project name
- [ ] Update the project description in `CMakeLists.txt`
- [ ] Modify `ford.md` with your project information
- [ ] Update the GitHub repository URLs in README and ford.md

### 3. Code Customization
- [ ] Replace or modify the example modules in `src/`:
  - `math_utils.f90` - Replace with your mathematical functions
  - `string_utils.f90` - Replace with your utility functions
  - `main.f90` - Update with your main program
- [ ] Update the library name in `src/CMakeLists.txt`
- [ ] Modify the executable name in `src/CMakeLists.txt`

### 4. Testing
- [ ] Update tests in `tests/` to match your new modules
- [ ] Modify test names in `tests/CMakeLists.txt`
- [ ] Add new test files as needed

### 5. Documentation
- [ ] Update this README with your project description
- [ ] Modify the license information if needed
- [ ] Update author information in `ford.md`
- [ ] Add project-specific documentation to `docs/`

### 6. CI/CD
- [ ] Update GitHub Actions workflows if needed
- [ ] Modify the supported platforms in `.github/workflows/ci.yml`
- [ ] Add any additional build steps or dependencies

### 7. Development Environment
- [ ] Customize VSCode settings in `.vscode/` if needed
- [ ] Update the debug configuration in `.vscode/launch.json`
- [ ] Modify build tasks in `.vscode/tasks.json`

### 8. Examples
- [ ] Replace example programs in `examples/` with your own
- [ ] Update `examples/README.md` with your examples

## File Replacement Checklist

### CMakeLists.txt
```cmake
# Change this line:
project(fortran_template
# To:
project(your_project_name
```

### src/CMakeLists.txt
```cmake
# Change library name:
add_library(your_project_lib
    # your source files
)

# Change executable name:
add_executable(your_project_demo
    main.f90
)
```

### README.md
- Replace all instances of "fortran-template" with your repository name
- Update the project description
- Modify the GitHub URLs
- Update the example code sections

### ford.md
- Update project name and description
- Change author information
- Update GitHub URLs

## Testing Your Changes

After customization, test your setup:

```bash
# Clean build
rm -rf build
mkdir build && cd build

# Configure and build
cmake ..
cmake --build .

# Run tests
ctest --output-on-failure

# Run your program
./src/your_project_demo
```

## Next Steps

Once you've customized the template:

1. Commit your changes
2. Push to your repository
3. Enable GitHub Actions (if not automatic)
4. Set up any additional CI/CD as needed
5. Start developing your Fortran project!

## Need Help?

- Check the main README.md for detailed usage instructions
- Look at the examples in the `examples/` directory
- Review the test files for testing patterns
- Open an issue on the original template repository for template-specific questions

Happy coding with Modern Fortran! 🚀