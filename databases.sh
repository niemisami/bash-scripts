#!/bin/bash

set -e

echo "Install MySQL"
apt-get update
apt-get install mysql-server
mysql_secure_installation

# Setup mysql timezones 
mysql_tzinfo_to_sql /usr/share/zoneinfo/ |mysql -u root -p mysql

# In order to setup time zones globally in databases 
mysql -u root -p -e "SET GLOBAL time_zone = 'Europe/Helsinki';"

# After creating database and new users add privileges 
#DATABASE_NAME='';
#DB_USER='';
#mysql -u root -p -e "GRANT ALL PRIVILEGES ON $DATABASE_NAME.* TO '$DB_USER'@'localhost' WITH GRANT OPTION;"

