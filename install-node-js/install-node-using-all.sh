#!/bin/bash

# <------------------------------------------>

# install-node-using-nvm

read -p "Do you want to install Node.js using NVM? (y/n): " install_node

if [ "$install_node" = "y" ]; then

    if command -v node &>/dev/null; then
    echo "Node.js is already installed."
    exit 0
fi
   
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
    source ~/.bashrc  

    nvm install --lts
    nvm use --lts

    echo "Node.js installed successfully."
fi

# <------------------------------------------>

# install-node-using-php

read -p "Do you want to install PHP? (y/n): " install_php

if [ "$install_php" = "y" ]; then

    if command -v node &>/dev/null; then
    echo "Node.js is already installed."
    exit 0
fi

    sudo apt install -y php php-cli php-fpm php-mbstring php-xml
    echo "PHP installed successfully."
fi

# <------------------------------------------>

read -p "Do you want to install Nginx? (y/n): " install_nginx

if [ "$install_nginx" = "y" ]; then

    if command -v node &>/dev/null; then
    echo "Node.js is already installed."
    exit 0
fi

    if command -v node &>/dev/null; then
    echo "Node.js is already installed."
    exit 0
fi

    sudo apt install -y nginx
    sudo systemctl start nginx
    sudo systemctl enable nginx
    echo "Nginx installed successfully."
fi
echo "Installation script completed."

# <------------------------------------------>