#!/bin/bash

# Check if script is run as root or with sudo privileges
if [ "$EUID" -ne 0 ]; then
    echo "Please run this script as root or using sudo."
    exit 1
fi

# Import the MongoDB GPG key
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | apt-key add -

# Add the MongoDB repository
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu $(lsb_release -cs)/mongodb-org/5.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-5.0.list

# Update the package list
apt update

# Install MongoDB
apt install -y mongodb-org

# Start MongoDB service
service mongod start

# Enable MongoDB to start on boot
systemctl enable mongod

# Wait for MongoDB to start
sleep 5

# Display MongoDB version and status
mongo --eval "printjson(db.version())"
service mongod status
