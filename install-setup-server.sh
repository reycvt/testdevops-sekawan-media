#!/bin/bash

# Set timezone Asia/Jakarta
sudo timedatectl set-timezone Asia/Jakarta

# Update and upgrade packages
sudo apt-get update
sudo apt-get upgrade -y

# Install packages
sudo apt-get install -y git curl zip python3 python3-pip

# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Add current user to the docker group
usermod -aG docker $USER

# Install docker-compose
sudo apt-get install docker-compose

# Clear file sh
rm get-docker.sh

echo "Setup server completed."
