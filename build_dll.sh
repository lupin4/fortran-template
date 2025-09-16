#!/bin/bash
# Build script for creating shared libraries (DLLs) with gfortran and fpm

set -e

echo "Building Fortran Template with gfortran for shared library (DLL) creation..."

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}Step 1: Building with fpm...${NC}"
fpm build

echo -e "${YELLOW}Step 2: Creating shared library (DLL)...${NC}"

# Build directory
BUILD_DIR="build/shared"
mkdir -p $BUILD_DIR

# Find the object files
OBJECTS=$(find build -name "src_*.f90.o" | tr '\n' ' ')

if [ -z "$OBJECTS" ]; then
    echo -e "${RED}Error: No object files found!${NC}"
    exit 1
fi

echo "Found object files: $OBJECTS"

# Create shared library
SHARED_LIB="$BUILD_DIR/libfortran_template.so"
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
    SHARED_LIB="$BUILD_DIR/fortran_template.dll"
fi

echo -e "${YELLOW}Creating shared library: $SHARED_LIB${NC}"

gfortran -shared -fPIC $OBJECTS -o $SHARED_LIB

if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ Shared library created successfully: $SHARED_LIB${NC}"
else
    echo -e "${RED}✗ Failed to create shared library${NC}"
    exit 1
fi

# Copy module files
echo -e "${YELLOW}Step 3: Copying module files...${NC}"
MOD_FILES=$(find build -name "*.mod")
if [ ! -z "$MOD_FILES" ]; then
    cp $MOD_FILES $BUILD_DIR/
    echo -e "${GREEN}✓ Module files copied to $BUILD_DIR${NC}"
else
    echo -e "${YELLOW}No module files found${NC}"
fi

echo -e "${GREEN}Build completed successfully!${NC}"
echo ""
echo "Output files:"
echo "  Shared Library: $SHARED_LIB"
echo "  Module files: $BUILD_DIR/*.mod"
echo ""
echo "Usage:"
echo "  To use the shared library, include the module files and link against $SHARED_LIB"