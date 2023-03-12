USERNAME="ansible-user"
KEY="" ##PUBLIC KEY GOES HERE
sudo useradd $USERNAME
sudo mkdir -p /home/$USERNAME/.ssh
sudo echo $KEY > /home/$USERNAME/.ssh/authorized_keys
sudo chmod 700 /home/$USERNAME/.ssh/
sudo chmod 400 /home/$USERNAME/.ssh/authorized_keys
sudo chown $USERNAME:$USERNAME -R /home/$USERNAME/.ssh/
sudo echo "$USERNAME  ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers	




