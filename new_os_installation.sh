#!/bin/bash
# author: Yu Chiu
# OS: Ubuntu 18.04

sudo apt-get -y update && sudo apt-get -y upgrade
sudo apt-get -y install


###############################
#                             #
#          SOFTWARES          #
#                             #
# #############################

# hp printer tool
sudo apt-get -y install hplip

# vscode 
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
sudo apt-get install ubuntu-make

# vlc media player
sudo apt-get -y install vlc

# aria2
sudo apt-get -y install aria2

# chrome

###############################
#                             #
#       PROGRAMMING TOOLS     #
#                             #
# #############################

# git
sudo apt-get -y install git 

# nodejs
sudo apt -y install nodejs 

# npm
sudo apt -y install npm 

# python3
sudo apt-get install python3.6

# pip3
sudo apt-get -y install python3-pip

# nginx
sudo apt-get -y install nginx

# postgres (not finished, need to setup default password afterward)
sudo apt-get install postgresql postgresql-contrib

# mongodb (not finished)
sudo apt install -y mongodb

# redis (not finished, details link https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-redis-on-ubuntu-16-04)
sudo apt-get install build-essential tcl
cd /tmp
curl -O http://download.redis.io/redis-stable.tar.gz
tar xzvf redis-stable.tar.gz
cd redis-stable
make
make test
sudo make install
sudo mkdir /etc/redis
sudo cp /tmp/redis-stable/redis.conf /etc/redis
sudo nano /etc/redis/redis.conf




