#!/bin/bash

set -e

echo "Install MySQL"
apt-get update
apt-get install mysql-server
mysql_secure_installation
