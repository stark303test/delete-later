#! /bin/bash

sudo apt-get update -y
wget https://github.com/slyfox1186/script-repo/raw/main/Bash/Misc/docker-compose-multi-arch.sh
sudo chmod +x docker-compose-multi-arch.sh
sudo ./docker-compose-multi-arch.sh
sudo apt-get install docker.io -y
sudo apt-get install npm nodejs -y
sudo usermod -aG docker ubuntu
git clone https://github.com/Anand-1432/Techdome-backend.git
git clone https://github.com/Anand-1432/Techdome-frontend.git
cd Techdome-backend
wget https://github.com/stark303test/delete-later/blob/master/.env?raw=true -O .env
wget https://github.com/stark303test/delete-later/blob/master/backend/Dockerfile?raw=true -O Dockerfile
npm install
sudo npm install -g pm2
cd /home/ubuntu/Techdome-frontend
wget https://github.com/stark303test/delete-later/blob/master/frontend/Dockerfile?raw=true -O Dockerfile
npm install
pm2 start npm --name "frontend-server" -- start
cd /home/ubuntu
wget https://github.com/stark303test/delete-later/blob/master/docker-compose.yml?raw=true -O docker-compose.yml


