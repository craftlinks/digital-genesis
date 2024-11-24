#!/bin/bash

# Download latest Zig compiler
wget https://ziglang.org/download/index.json

# Get the latest version
LATEST_VERSION=$(jq -r '.master.version' index.json)

# Check if the latest version is already installed
if [ -f zig_version.txt ]; then
    # Compare the versions
    if [ $LATEST_VERSION == $(cat zig_version.txt) ]; then
        echo "Zig is already up to date."
        # Remove the index.json file
        rm index.json
        exit 0
    fi
fi

# Download the latest version
wget https://ziglang.org/builds/zig-linux-x86_64-$LATEST_VERSION.tar.xz

# Extract the Zig compiler
tar -xf zig-linux-x86_64-$LATEST_VERSION.tar.xz

# Move the Zig compiler to /usr/local/bin
sudo mv zig-linux-x86_64-$LATEST_VERSION/zig /usr/local/bin

# Remove the Zig compiler directory
rm -rf zig-linux-x86_64-$LATEST_VERSION.tar.xz
rm -rf zig-linux-x86_64-$LATEST_VERSION

# Write the Zig version to a file
echo $LATEST_VERSION > zig_version.txt

# Remove the index.json file
rm index.json