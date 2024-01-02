#!/bin/bash

# Check if script is run as root or with sudo privileges
if [ "$EUID" -ne 0 ]; then
    echo "Please run this script as root or using sudo."
    exit 1
fi

# Update the package list
apt update

# Install NGINX
apt install -y nginx

# Start NGINX service
systemctl start nginx

# Enable NGINX to start on boot
systemctl enable nginx

# Display NGINX version and status
nginx -v
systemctl status nginx
