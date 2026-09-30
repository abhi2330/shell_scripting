#!/bin/bash
# this script takes the package name from user and installs it
read -p "Enter the package name" package_name

echo "Updating system & Installing $package_name" 
sudo apt-get update -y
sudo apt install $package_name -y

read -p "Enter the service name" service_name

sudo systemctl start $service_name
systemctl status $service_name
