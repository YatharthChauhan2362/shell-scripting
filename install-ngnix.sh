#!/bin/bash

sudo apt update

if command -v node &>/dev/null; then
  echo "Node.js is already installed."
  exit 0
fi

sudo apt install
y nodejs npm

sudo apt install -y nginx
sudo systemctl start nginx
sudo systemctl enable nginx

node -v
npm -v
nginx -v