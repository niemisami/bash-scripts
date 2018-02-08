#!/bin/bash

set -e


print_line() {
    echo "===$1"
}

print_line "Installing Docker."
print_line "Omitted from:"
print_line "https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-redis-on-ubuntu-16-04"

print_line "Update system and install required packets"
apt-get update
apt-get install build-essential tcl


print_line "Download and install latest Redis"

cd /tmp
curl -O http://download.redis.io/redis-stable.tar.gz
tar xzvf redis-stable.tar.gz
cd redis-stable
make
make test
make install

print_line "Setup complete"
print_line "Configure Redis"
mkdir /etc/redis

# Copy default configurations
cp /tmp/redis-stable/redis.conf /etc/redis
print_line "Customize configurations at /etc/redis"
vim /etc/redis/redis.conf

print_line "Create redis service file and content"
redis_service_file="/etc/systemd/system/redis.service"

echo $redis_service_file

touch $redis_service_file
service_text="[Unit]
Description=Redis In-Memory Data Store
After=network.target

[Service]
User=redis
Group=redis
ExecStart=/usr/local/bin/redis-server /etc/redis/redis.conf
ExecStop=/usr/local/bin/redis-cli shutdown
Restart=always

[Install]
WantedBy=multi-user.target"
echo "$service_text" > $redis_service_file

print_line "Create redis user and group"
adduser --system --group --no-create-home redis
mkdir /var/lib/redis
chown redis:redis /var/lib/redis
chmod 770 /var/lib/redis

print_line "Setup complete"

print_line "Start redis"
systemctl start redis

print_line "Redis status"
sudo systemctl status redis

print_line "To start redis on boot run the following: sudo systemctl enable redis"




