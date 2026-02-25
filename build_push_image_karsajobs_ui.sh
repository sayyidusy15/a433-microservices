#!/bin/bash

# Variabel
USER_DOCKER="sayyidusyalghiffari"
IMAGE_NAME="karsajobs-ui"

# 1. Build Image
echo "Building image $IMAGE_NAME..."
docker build -t $USER_DOCKER/$IMAGE_NAME:latest .

# 2. Login (Gunakan env var agar aman)
echo "Logging in to Docker Hub..."
echo $PASSWORD_DOCKER_HUB | docker login -u $USER_DOCKER --password-stdin

# 3. Push Image
echo "Pushing image to Docker Hub..."
docker push $USER_DOCKER/$IMAGE_NAME:latest

echo "Done!"