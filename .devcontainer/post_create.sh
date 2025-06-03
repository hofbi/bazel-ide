#!/usr/bin/env bash

# Setup script for devcontainer
# This script runs once when the container is first created

set -euxo pipefail

sudo mkdir -p "$HOME"/.cache
sudo chown -R $USER:$USER "$HOME"/.cache

pre-commit install
direnv allow .envrc

echo "postCreateCommand setup complete!"
