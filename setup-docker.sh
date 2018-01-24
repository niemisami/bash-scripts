#!/bin/bash

set -e

echo "===Installing Docker."
echo "===Omitted from:"
echo "===http://linuxbsdos.com/2016/12/13/how-to-install-docker-and-run-docker-containers-on-linux-mint-1818-1/"
echo "===https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04"

echo "===Add Docker's official GPG key"
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 \
          --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

echo "===Update"
apt-get update

echo "===Install latest stable version"
apt install linux-image-generic linux-image-extra-virtual

echo "===Install docker"
apt install docker-engine

echo "===Status of Docker"
systemctl status docker

echo "===Set current user into Docker group"
usermod -aG docker ${USER}
# enable group change
su - ${USER}

echo "===Install docker-compose"
DOCKER_COMPOSE_VERSION=1.18.0


echo "===FINISH=="
curl -L https://github.com/docker/compose/releases/download/"$DOCKER_COMPOSE_VERSION"/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

docker-compose --version
