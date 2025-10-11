#!/bin/bash
# Simple provisioning script for DevOps Git + Vagrant demo

echo "Updating packages..."
sudo apt update -y

echo "Installing Nginx..."
sudo apt install nginx -y

echo "Setting up homepage..."
echo "<h1>Hello from Vagrant + Git + DevOps Training</h1>" | sudo tee /var/www/html/index.html

echo "Restarting Nginx..."
sudo systemctl restart nginx

echo "Provisioning complete!"

