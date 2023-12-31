#!/bin/bash
sudo apt update -y 
sudo apt install docker -y
sudo apt install docker.io -y
sudo systemctl start docker
sudo usermod -aG docker $USER
# Check if the user is now a member of the docker group
if groups | grep  "docker"; then
  echo "User $USER successfully added to the docker group."
  docker run -p 8080:80 nginx 
else
  echo "Failed to add user $USER to the docker group. Please check permissions."
  sudo docker run -p 8080:80 nginx 
fi
