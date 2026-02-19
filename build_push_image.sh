#!/bin/bash

# 1. Build Docker image dengan nama item-app dan tag v1
docker build -t item-app:v1 .

# 2. Melihat daftar image di lokal
docker images

# 3. Mengubah nama image (tagging) agar sesuai format Docker Hub
# Ganti 'username_dockerhub_kamu' dengan username asli Docker Hub milikmu
docker tag item-app:v1 sayyidusyalghiffari/item-app:v1

# 4. Login ke Docker Hub (Pastikan sudah export password di terminal sebelumnya)
echo $PASSWORD_DOCKER_HUB | docker login -u sayyidusyalghiffari --password-stdin

# 5. Mengunggah image ke Docker Hub
docker push sayyidusyalghiffari/item-app:v1