#!/bin/bash

if [ "$EUID" -eq 0 ]; then
    echo "Please run this script as a non-root user (without sudo)."
    exit 1
fi

if command -v nvm &> /dev/null; then
    echo "NVM is already installed. Exiting..."
    exit 0
fi

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

nvm --version

echo "NVM has been installed. You can now use 'nvm' to manage Node.js versions."


echo "[ -s \"$NVM_DIR/nvm.sh\" ] && \. \"$NVM_DIR/nvm.sh\"  
