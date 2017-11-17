#!/bin/bash

# Exit every time if something goes wrong at any point
set -e

echo 'Will install everything for you in the near future (not a promise..)'

# Basic uUpdate and upgrade
#apt-get update
#apt-get upgrade -y

# Basic packages
apt-get install -y openssh-server screen unzip 
apt-get install -y build-essential libssl-dev ufw
apt-get install -y python-software-properties g++ make software-properties-common
apt-get install -y libssl-dev libsqlite3-dev
apt-get install -y curl openssl sqlite3


# Prompt OK if last command was successful
if (( $? )) ; then echo failed ; else echo OK; fi
