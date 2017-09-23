#!/bin/bash

apt-get update
apt-get install -y curl
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh

# to test, sudo docker run hello-world
# and docker run -it ubuntu bash
