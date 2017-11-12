#!/bin/bash

# Exit every time if something goes wrong at any point
set -e

echo 'Will install everything for you in the near future (not a promise..)'

# Basic uUpdate and upgrade
#apt-get update
#apt-get upgrade

# Basic packages
PACKAGES='build-essential libssl-dev ufw'
apt-get install -y $PACKAGES


# Prompt OK if last command was successful
if (( $? )) ; then echo failed ; else echo OK; fi
