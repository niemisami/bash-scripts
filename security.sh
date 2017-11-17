#!/bin/bash

set -e

echo 'Will setup ssh (later ufw)'

ssh-keygen -t rsa -b 4096 -C 'sami@nieminen.fi'
