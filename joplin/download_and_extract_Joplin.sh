#!/bin/bash
set -e

#-----------------------------------------------------
# Download Joplin
#-----------------------------------------------------

# Get the latest version to download
RELEASE_VERSION=$(wget -qO - "https://api.github.com/repos/laurent22/joplin/releases/latest" | grep -Po '"tag_name": "v\K.*?(?=")')

# Creates the folder where the binary will be stored
mkdir -p joplin/

# Download the latest version
wget -nv --show-progress -O joplin/Joplin.AppImage https://github.com/laurent22/joplin/releases/download/v$RELEASE_VERSION/Joplin-$RELEASE_VERSION.AppImage

# Gives execution privileges
chmod +x joplin/Joplin.AppImage && joplin/Joplin.AppImage --appimage-extract && rm -rf joplin/
