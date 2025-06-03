#!/usr/bin/env bash

# Setup script for devcontainer onCreateCommand
# This script runs once when the container is first created

set -euxo pipefail

# Add direnv hook to zsh configuration
echo "Updating .bashrc and .zshrc..."
if [[ -f "$HOME"/.bashrc ]]; then
    # shellcheck disable=SC2016
    echo -e 'eval "$(direnv hook bash)"' >>"$HOME"/.bashrc
fi
if [ -f "$HOME"/.zshrc ]; then
    # shellcheck disable=SC2016
    echo -e 'eval "$(direnv hook zsh)"' >>"$HOME"/.zshrc
fi

echo "onCreateCommand setup complete!"
