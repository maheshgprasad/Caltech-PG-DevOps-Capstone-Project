# OS: Ubuntu
#Optional
sudo apt wget -y
# Node JS, Version 18.14.2 Install
# navigate to the /tmp directory
cd /tmp
# download the archive from https://nodejs.org/en/download/
wget https://nodejs.org/dist/v18.14.2/node-v18.14.2-linux-x64.tar.xz
# extract the archive
tar -xvf node-v18.14.2-linux-x64.tar.xz
# move the file to a friendly directory name
mv node-v18.14.2-linux-x64 node-18.14.2
# move the node-js directory to /usr/lib/ 
sudo mv node-18.14.2/ /usr/lib/
# link the executable binaries to /usr/bin/{binaryName}
sudo ln -s /usr/lib/node-18.14.2/bin/node /usr/bin/node
sudo ln -s /usr/lib/node-18.14.2/bin/npm /usr/bin/npm
sudo ln -s /usr/lib/node-18.14.2/bin/npx /usr/bin/npx
# clean up
rm -rf /tmp/node-v18.14.2-linux-x64.tar.xz