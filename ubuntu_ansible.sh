#!/bin/bash

# Installion ansible on ubuntu server

sudo apt-add-repository ppa:ansible/ansible
sudo apt update

sudo apt install -y  ansible

# adding host name

cat >> /etc/hosts << EOF
ayait1c.mylabserver.com
ayait2c.mylabserver.com
ayait3c.mylabserver.com
EOF

# Create password less sudo edit
sudo touch /etc/sudoers.d/$USER

echo "$USER ALL=(ALL)	NOPASSWD: ALL" > /etc/sudoers.d/$USER







