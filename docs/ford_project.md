# FORD configuration file for generating documentation
# Install FORD with: pip install ford
# Generate docs with: ford docs/ford_project.md

project: Fortran Template
project_github: https://github.com/lupin4/fortran-template
summary: A comprehensive template for modern Fortran projects
author: Your Name
author_description: Template author
github: https://github.com/yourusername
email: your.email@example.com
predocmark: >
media_dir: docs/media
output_dir: docs/html
project_dir: ./src
exclude_dir: ./build
extensions: f90
display: public
         protected
source: true
graph: true
macro: TEST
       LOGIC=.true.

This project provides a comprehensive template for modern Fortran development,
including build systems, testing frameworks, and CI/CD pipelines.

## Features

- Modern Fortran 2018 code structure
- Multiple build system support (Make, CMake)
- Integrated testing framework
- GitHub Actions CI/CD
- Documentation generation