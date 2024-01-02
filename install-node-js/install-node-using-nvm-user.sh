#!/bin/bash

if [ ! -f ~/.nvm/nvm.sh ]; then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
fi

source ~/.nvm/nvm.sh

echo "Which version of Node.js do you want to install?"
read -p "Enter the version (e.g., LTS, 14, 16): " node_version

install_command="nvm install"
if [ "$node_version" == "LTS" ]; then
  install_command+=" --lts"
else
  install_command+=" $node_version"
fi

$install_command

nvm alias default $(nvm current)

node --version
npm --version
