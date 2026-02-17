#!/bin/bash

# Build script for Anaximander2 on Ubuntu Linux 22.04 with .NET 8

echo "Building Anaximander2 for .NET 8..."

# Check if .NET 8 is installed
if ! command -v dotnet &> /dev/null; then
    echo "Error: .NET 8 SDK is not installed. Please install .NET 8 SDK first."
    echo "Visit: https://dotnet.microsoft.com/download/dotnet/8.0"
    exit 1
fi

# Check .NET version
DOTNET_VERSION=$(dotnet --version)
echo "Using .NET SDK version: $DOTNET_VERSION"

# Clean previous builds
echo "Cleaning previous builds..."
dotnet clean Source/Anaximander.sln

# Restore packages
echo "Restoring NuGet packages..."
dotnet restore Source/Anaximander.sln

# Build the solution
echo "Building solution..."
dotnet build Source/Anaximander.sln --configuration Release

if [ $? -eq 0 ]; then
    echo "Build completed successfully!"
    echo "Binaries are located in: bin/"
else
    echo "Build failed!"
    exit 1
fi