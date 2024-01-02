#!/bin/bash
if command -v node &>/dev/null; then
  echo "Node.js is already installed."
  exit 0
fi

sudo apt-get update
sudo apt-get install -y nodejs npm

if command -v node &>/dev/null; then
  echo "Node.js installed successfully."
else
  echo "Failed to install Node.js."
  exit 1
fi

node --version
npm --version