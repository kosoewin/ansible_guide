#!/bin/bash


# installing ansible on redhat7/8
sudo yum install epel-release
sudo yum install ansible

# creating ansible user

sudo useradd ansible
sudo echo "password" | passwd --stdin ansible

# password less sudo
sudo echo " $USER ALL=(ALL)    NOPASSWD:ALL " | tee -a /etc/sudoers.d/$USER
