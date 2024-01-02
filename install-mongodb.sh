#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

if [ "$EUID" -ne 0 ]; then
    echo "Please run this script as root or using sudo."
    exit 1
fi

echo "Importing the MongoDB GPG key..."
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | apt-key add -
echo "Done."

echo "Adding the MongoDB repository to sources.list..."
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu $(lsb_release -cs)/mongodb-org/5.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-5.0.list
echo "Done."

echo "Updating the package list..."
apt update
echo "Done."

echo "Installing MongoDB..."
apt install -y mongodb-org
echo "Done."

echo "Starting MongoDB service..."
systemctl start mongod
echo "Done."

echo "Enabling MongoDB to start on boot..."
systemctl enable mongod
echo "Done."

echo "Checking MongoDB version..."
mongo --eval "printjson(db.version())"
echo "Done."

echo "Checking MongoDB service status..."
systemctl status mongod
echo "Done."

echo "MongoDB has been installed."
