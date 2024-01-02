#!/bin/bash

check_installed() {
    command -v $1 >/dev/null 2>&1
}

read -p "Install Node.js? (y/n): " install_node
if [ "$install_node" == "y" ]; then
    if check_installed "node"; then
        echo "Node.js is already installed."
    else
        sudo apt update
        sudo apt install -y nodejs
    fi
fi

read -p "Install PHP? (y/n): " install_php
if [ "$install_php" == "y" ]; then
    if check_installed "php"; then
        echo "PHP is already installed."
    else
        sudo apt install -y php
    fi
fi

read -p "Install NVM (Node Version Manager)? (y/n): " install_nvm
if [ "$install_nvm" == "y" ]; then
    if check_installed "nvm"; then
        echo "NVM is already installed."
    else
        curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
        source ~/.bashrc
    fi
fi

read -p "Install Nginx? (y/n): " install_nginx
if [ "$install_nginx" == "y" ]; then
    if check_installed "nginx"; then
        echo "Nginx is already installed."
    else
        sudo apt install -y nginx
    fi
fi

read -p "Install MongoDB? (y/n): " install_mongodb
if [ "$install_mongodb" == "y" ]; then
    if check_installed "mongod"; then
        echo "MongoDB is already installed."
    else
        sudo apt install -y mongodb
    fi
fi

read -p "Install MySQL? (y/n): " install_mysql
if [ "$install_mysql" == "y" ]; then
    if check_installed "mysql"; then
        echo "MySQL is already installed."
    else
        sudo apt install -y mysql-server
    fi
fi

echo "Installation complete."
