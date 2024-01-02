#!/bin/bash

read -p "Install Node.js? (y/n): " install_node
if [ "$install_node" == "y" ]; then
    sudo apt update
    sudo apt install -y nodejs
fi

read -p "Install PHP? (y/n): " install_php
if [ "$install_php" == "y" ]; then
    sudo apt install -y php
fi

read -p "Install NVM (Node Version Manager)? (y/n): " install_nvm
if [ "$install_nvm" == "y" ]; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
    source ~/.bashrc
fi

read -p "Install Nginx? (y/n): " install_nginx
if [ "$install_nginx" == "y" ]; then
    sudo apt install -y nginx
fi

read -p "Install MongoDB? (y/n): " install_mongodb
if [ "$install_mongodb" == "y" ]; then
    sudo apt install -y mongodb
fi

read -p "Install MySQL? (y/n): " install_mysql
if [ "$install_mysql" == "y" ]; then
    sudo apt install -y mysql-server
fi

echo "Installation complete."
