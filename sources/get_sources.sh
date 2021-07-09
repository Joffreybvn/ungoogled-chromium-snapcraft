#!/bin/bash

# Get the sources
wget -O tarball.tar.xz "https://github.com/mdedonno1337/ungoogled-chromium-binaries/releases/download/91.0.4472.114-1.1/ungoogled-chromium_91.0.4472.114-1.1_linux.tar.xz"

# Extract to "tarball" folder
mkdir tarball
tar -xf tarball.tar.xz --strip-components=1 -C tarball

# Replace the files
cp chrome-wrapper tarball/
