#!/bin/bash

TAG="90.0.4430.85-1.1"

# Install latest version
echo "Download latest version"
wget https://github.com/Joffreybvn/ungoogled-chromium-snapcraft/releases/download/${TAG}-sandbox/ungoogled-chromium_${TAG}-sandbox_amd64.snap

echo "Snap install"
sudo snap install ungoogled-chromium_${TAG}-sandbox_amd64.snap --dangerous
rm ungoogled-chromium_${TAG}-sandbox_amd64.snap

# Enable sandbox
echo "Enable sandbox"
sudo snap connect ungoogled-chromium:browser-sandbox

echo "Ungoogled Chromium installation success !"