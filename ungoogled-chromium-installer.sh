#!/bin/bash

TAG="90.0.4430.212-1.1-sandbox"

# Install latest version
echo "Download latest version"
wget https://github.com/Joffreybvn/ungoogled-chromium-snapcraft/releases/download/${TAG}/ungoogled-chromium_${TAG}_amd64.snap

echo "Snap install"
sudo snap install ungoogled-chromium_${TAG}_amd64.snap --dangerous
rm ungoogled-chromium_${TAG}_amd64.snap

# Enable sandbox
echo "Enable sandbox"
sudo snap connect ungoogled-chromium:browser-sandbox

echo "Ungoogled Chromium installation success !"