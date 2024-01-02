#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "Please run this script as root or using sudo."
    exit 1
fi

apt update

apt install -y mysql-server

systemctl start mysql

systemctl enable mysql

mysql_secure_installation

mysql --version
systemctl status mysql
