#!/bin/bash
# Setup script for new projects using this template
# This script helps customize the template for a new project

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}=== Fortran Template Setup ===${NC}"
echo

# Get project information
read -p "Enter your project name (e.g., my-fortran-project): " PROJECT_NAME
read -p "Enter your name: " AUTHOR_NAME
read -p "Enter your email: " AUTHOR_EMAIL
read -p "Enter a brief project description: " PROJECT_DESCRIPTION

# Validate inputs
if [ -z "$PROJECT_NAME" ]; then
    echo -e "${RED}Error: Project name is required${NC}"
    exit 1
fi

echo
echo -e "${YELLOW}Setting up project: $PROJECT_NAME${NC}"

# Update README.md
sed -i "s/fortran-template/$PROJECT_NAME/g" README.md
sed -i "s/lupin4\/fortran-template/$(git config --get remote.origin.url | sed 's/.*github.com\///; s/\.git$//')/g" README.md

# Update CMakeLists.txt
sed -i "s/fortran-template/$PROJECT_NAME/g" CMakeLists.txt
sed -i "s/A template for Fortran projects/$PROJECT_DESCRIPTION/g" CMakeLists.txt

# Update main.f90
sed -i "s/fortran-template/$PROJECT_NAME/g" src/main.f90

# Update Makefile
sed -i "s/fortran-template/$PROJECT_NAME/g" Makefile

# Update FORD documentation
sed -i "s/Fortran Template/$PROJECT_NAME/g" docs/ford_project.md
sed -i "s/Your Name/$AUTHOR_NAME/g" docs/ford_project.md
sed -i "s/your.email@example.com/$AUTHOR_EMAIL/g" docs/ford_project.md
sed -i "s/A comprehensive template for modern Fortran projects/$PROJECT_DESCRIPTION/g" docs/ford_project.md

# Update GitHub URLs in documentation
if [ ! -z "$(git config --get remote.origin.url)" ]; then
    GITHUB_URL=$(git config --get remote.origin.url | sed 's/\.git$//')
    sed -i "s|https://github.com/lupin4/fortran-template|$GITHUB_URL|g" docs/ford_project.md
fi

echo -e "${GREEN}✓ Project files updated${NC}"
echo

# Build test
echo -e "${YELLOW}Testing build...${NC}"
if make clean && make all && make test; then
    echo -e "${GREEN}✓ Build test passed${NC}"
else
    echo -e "${RED}✗ Build test failed${NC}"
    exit 1
fi

echo
echo -e "${GREEN}🎉 Setup complete!${NC}"
echo
echo "Next steps:"
echo "1. Replace src/math_utils.f90 with your actual modules"
echo "2. Update src/main.f90 with your application logic"
echo "3. Add your tests to tests/"
echo "4. Update documentation in docs/"
echo "5. Commit your changes: git add . && git commit -m 'Initial project setup'"
echo
echo "Run 'make help' to see available build targets."