#!/usr/bin/env bash

# Setup script for devcontainer
# This script runs once when the container is first created

set -euxo pipefail

sudo mkdir -p "$HOME"/.cache
sudo chown -R "$USER":"$USER" "$HOME"/.cache

# Required for py_console_script_binary targets
sudo ln -s /usr/local/python/current/bin/python3 /usr/bin/python3

pre-commit install
direnv allow .envrc
direnv exec . bazel run //tools:bazel_env

echo "postCreateCommand setup complete!"
