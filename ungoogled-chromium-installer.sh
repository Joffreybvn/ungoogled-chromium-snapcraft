#!/bin/bash

echo "Install script started"
TAG="90.0.4430.85-1.1"

# Run with elevated privileges
[ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"


# Install latest version
wget https://github.com/Joffreybvn/ungoogled-chromium-snapcraft/releases/download/${TAG}-sandbox/ungoogled-chromium_${TAG}-sandbox_amd64.snap
sudo snap install ungoogled-chromium_${TAG}-sandbox_amd64.snap --dangerous

# Enable sandbox
sudo snap connect ungoogled-chromium:browser-sandbox

echo "Ungoogled Chromium installation success !"