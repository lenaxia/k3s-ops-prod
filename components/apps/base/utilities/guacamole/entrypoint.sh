#!/bin/bash
apt update && apt upgrade
apt install -y software-properties-common gnupg sudo wget
sudo bash -c 'echo "deb http://deb.debian.org/debian buster-backports main" >> /etc/apt/sources.list.d/backports.list'
sudo apt update && sudo apt -y -t buster-backports install freerdp2-dev libpulse-dev freerdp2-x11
wget https://dlcdn.apache.org/guacamole/1.4.0/binary/guacamole-auth-header-1.4.0.tar.gz /home/guacamole/.guacamole/extensions/

sudo bash -c 'echo "http-auth-header: Remote-User" >> /home/guacamole/.guacamole/guacamole.properties'
