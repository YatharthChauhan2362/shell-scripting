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
  echo "Failed to instnpm versions
  
node --version
npm --version