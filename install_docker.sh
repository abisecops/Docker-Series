#!/bin/bash

# Check if running as root
if [ "$(id -u)" -ne "0" ]; then
  echo "This script must be run as root. Please use sudo."
  exit 1
fi

# Update package index
echo "Updating package index..."
apt update

# Install prerequisites
echo "Installing prerequisites..."
apt install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker's official GPG key
echo "Adding Docker's official GPG key..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

# Set up the Docker repository
echo "Setting up Docker repository..."
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update package index again
echo "Updating package index again..."
apt update

# Install Docker Engine
echo "Installing Docker..."
apt install -y docker-ce docker-ce-cli containerd.io

# Install Docker Compose
echo "Installing Docker Compose..."
DOCKER_COMPOSE_VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep 'tag_name' | cut -d\" -f4)
curl -L "https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Apply executable permissions to the binary
chmod +x /usr/local/bin/docker-compose

# Add current user to the docker group
echo "Adding user to the docker group..."
usermod -aG docker $USER

# Prompt user to log out and log back in
echo "Docker installation complete. Please log out and log back in to apply group membership changes."

# Check Docker and Docker Compose versions
echo "Docker version:"
docker --version

echo "Docker Compose version:"
docker-compose --version
