#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "Please run this script as root or using sudo."
    exit 1
fi

apt update

apt install -y nginx

systemctl start nginx

systemctl enable nginx

nginx -v
systemctl status nginx
