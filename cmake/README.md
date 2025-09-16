# CMake modules and find scripts

This directory contains custom CMake modules and find scripts for the project.

## Files

Add custom CMake modules here as needed:

- `FindCustomLibrary.cmake` - Find scripts for external libraries
- `ProjectSettings.cmake` - Project-specific settings and configurations
- `CompilerWarnings.cmake` - Compiler warning configurations

## Usage

Include modules in your CMakeLists.txt:

```cmake
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
include(ProjectSettings)
```