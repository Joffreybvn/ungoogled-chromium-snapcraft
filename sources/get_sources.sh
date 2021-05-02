#!/bin/bash

TAG="90.0.4430.85-1.1"

# Get the sources
wget -O tarball.tar.xz "https://github.com/Joffreybvn/ungoogled-chromium-binaries/releases/download/${TAG}/ungoogled-chromium_${TAG}_linux.tar.xz"

# Extract to "tarball" folder
mkdir tarball
tar -xf tarball.tar.xz --strip-components=1 -C tarball

# Replace the files
cp chrome-wrapper tarball/
mv tarball/chrome_sandbox tarball/chrome-sandbox