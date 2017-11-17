#!/bin/bash

# Exit every time if something goes wrong at any point
set -e

echo 'Will install everything for you in the near future (not a promise..)'

# Basic uUpdate and upgrade
#apt-get update
#apt-get upgrade -y

# Basic packages
apt-get install -y openssh-server screen unzip 
apt-get install -y build-essential libssl-dev ufw libffi-dev
apt-get install -y python-software-properties g++ make software-properties-common
apt-get install -y libssl-dev libsqlite3-dev
apt-get install -y curl openssl sqlite3


# Node Version Manager	
# Installation following https://github.com/creationix/nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash

# PostgreSQL
apt-get install -y postgresql postgresql-contrib

# Python3 and pip
apt-get install -y python3-pip
apt-get install -y python3-venv

# Display OK if last command was successful
if (( $? )) ; then echo failed ; else echo OK; fi
