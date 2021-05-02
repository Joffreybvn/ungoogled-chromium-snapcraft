#!/bin/bash

# Run with elevated privileges
[ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"


# Install latest version
sudo snap install ungoogled-chromium_90.0.4430.85-1.1-sandbox_amd64.snap --dangerous

# Enable sandbox
sudo snap connect ungoogled-chromium:browser-sandbox

echo "# Ungoogled Chromium installation success !"