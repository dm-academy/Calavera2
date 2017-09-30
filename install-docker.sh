#!/bin/bash

# apt-get update

apt-get update && apt-get install -y --no-install-recommends apt-utils

apt-get install -y tree
apt-get install -y curl

curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh
sudo usermod -aG docker ubuntu  # should be vagrant but ubuntu/xenial blah

# instal docker-compose
curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# install docker-machine
curl -L https://github.com/docker/machine/releases/download/v0.12.2/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine &&
chmod +x /tmp/docker-machine &&
sudo cp /tmp/docker-machine /usr/local/bin/docker-machine


# at this point we could package the machine -- let's.

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
