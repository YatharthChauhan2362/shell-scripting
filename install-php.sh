#!/bin/bash

sudo apt update

sudo apt install -y php php-cli php-fpm php-json php-common php-mysql php-zip php-gd php-mbstring php-curl php-xml php-pear php-bcmath

sudo systemctl start php7.4-fpm

sudo systemctl enable php7.4-fpm

php -v

sudo systemctl status php7.4-fpm
