# OS: Ubuntu
sudo apt install docker.io -y
sudo systemctl enable docker
sudo service docker start
# sudo usermod -aG docker ansible-user #Important for ansible to be able to access docker
# newgrp docker 
#Initiate swarm mode on the docker instance.
# sudo not required as the user belongs to the docker user group.
docker swarm init

