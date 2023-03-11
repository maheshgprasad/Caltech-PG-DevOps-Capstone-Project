# OS: Ubuntu
sudo apt install docker.io -y
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker ansible-user #Important for ansible to be able to access docker

#Initiate swarm mode on the docker instance.
# sudo not required as the user belongs to the docker user group.
docker swarm init