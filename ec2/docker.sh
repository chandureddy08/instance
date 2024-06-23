#!/bin/bash

git clone https://github.com/chandureddy08/expense-docker.git

# Update the package database
yum install -y yum-utils

# Add the Docker repository
yum-config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo

# Install Docker packages
yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# Start the Docker service
systemctl start docker

# Enable Docker to start on boot
systemctl enable docker

# Add the ec2-user to the docker group
usermod -aG docker ec2-user