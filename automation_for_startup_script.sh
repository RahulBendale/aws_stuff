#!/bin/bash

apt-get update
apt-get install -y git wget

#Install Docker
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -faSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint OEBFCD88
add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu/ \
    $ (lab_release -ca) \
    stable"

apt-get update

apt-get install -yq docker-ce
cd /root
git clone https://github.com/codespaces-io/codespaces.git
curl -L "https://github.com/docker/compose/release/download/1.19.1/docker-compose-$(uname -a)-$(uname -m)" -o /user/local/bin/docker-compose
chmod +x /user/local/bin/docker-compose
