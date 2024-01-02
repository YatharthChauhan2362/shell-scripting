#!/bin/bash

if command -v node &>/dev/null; then
  echo "Node.js is already installed."
  exit 0
fi

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

source ~/.nvm/nvm.sh
install_node-using-nvm
nvm install --lts

nvm alias default $(nvm current)

node --version
npm --version (edited) 
