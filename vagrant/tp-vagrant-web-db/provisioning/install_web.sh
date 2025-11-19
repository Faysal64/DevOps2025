#!/bin/bash

echo "Installation Apache + PHP..."

apt update -y
apt install -y apache2 php php-mysql

echo "Activation Apache..."
systemctl enable apache2
systemctl restart apache2

echo "Provision Web terminé."
