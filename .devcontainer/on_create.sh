#!/usr/bin/env bash

# Setup script for devcontainer onCreateCommand
# This script runs once when the container is first created

set -euxo pipefail

# Add direnv hook to zsh configuration
echo "Updating .bashrc and .zshrc..."
if [[ -f ~/.bashrc ]]; then
    echo -e 'eval "$(direnv hook bash)"' >>~/.bashrc
fi
if [ -f "~/.zshrc" ]; then
    echo -e 'eval "$(direnv hook zsh)"' >>~/.zshrc
fi

echo "onCreateCommand setup complete!"
