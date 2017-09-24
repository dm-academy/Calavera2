#!/bin/bash

apt-get update
apt-get install -y tree

curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh
sudo usermod -aG docker $USER

# apt-get install -y docker-compose
#
# apt-get install -y nodejs npm
#
# mkdir /home/ubuntu/app1
#
# cp -r /vagrant/app1-rsrc/* /home/ubuntu/app1/
# cd /home/ubuntu/app1
# npm install express
# # npm install mocha --save
# # npm install chai --save # do these auto-install on first run??
#
# echo "starting node app"
# nodejs app.js &
# echo "started, perhaps"

# to test, sudo docker run hello-world
# and docker run -it ubuntu bash

# write node server that serves HTML
# wrap in mocha
# dockerize it
# script it
