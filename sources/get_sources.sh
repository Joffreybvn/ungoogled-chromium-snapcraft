#!/bin/bash

# Get the sources
wget -O tarball.tar.xz "https://github.com/mdedonno1337/ungoogled-chromium-binaries/releases/download/90.0.4430.212-1.1/ungoogled-chromium_90.0.4430.212-1.1_linux.tar.xz"

# Extract to "tarball" folder
mkdir tarball
tar -xf tarball.tar.xz --strip-components=1 -C tarball

# Replace the files
cp chrome-wrapper tarball/
mv tarball/chrome_sandbox tarball/chrome-sandbox