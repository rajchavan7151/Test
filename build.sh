#!/bin/bash

echo "Compiling Java Code..."

# Create output folder if it doesn't exist
mkdir -p out

# Compile Java code
javac -d out src/HelloWorld.java

# Check if compilation was successful
if [ $? -eq 0 ]; then
    echo "Compilation Successful."
    echo "Running Java Program..."
    java -cp out HelloWorld
else
    echo "Compilation Failed."
    exit 1
fi
