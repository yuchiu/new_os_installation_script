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


#curl
sudo apt-get -y install curl

# vlc media player
sudo apt-get -y install vlc

# aria2
sudo apt-get -y install aria2

# hp printer tool
# https://websiteforstudents.com/installing-hp-printer-drivers-on-ubuntu-16-04-17-10-18-04-desktop/
# sudo apt-get -y install hplip 

# vscode 
# sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
# sudo apt-get install ubuntu-make
# umake ide visual-studio-code

###############################
#                             #
#      PROGRAMMING TOOLS      #
#                             #
# #############################

# git
sudo apt-get -y install git 

# nodejs
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo chown -R $USER:$(id -gn $USER) /home/yuchiu/.config #grant permission for nodejs
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p # Increasing the amount of inotify watchers, prevent error"ENOSPC no space left on device"
sudo npm i -g cross-env eslint tslint

#install npm packages globally
sudo npm i -g create-react-app

# install java8
sudo apt-add-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer

# python3
sudo apt-get install python3.6

# pip3
sudo apt-get -y install python3-pip

# install python scraper libraries
pip3 install requests selenum beautifulsoup4 pyquery pymysql pymongo redis flask django jupyter

# nginx
sudo apt-get -y install nginx
sudo systemctl start nginx
sudo systemctl enable nginx

# tools & setting 
sudo apt-get install gcc g++ autoconf libpcre3 libpcre3-dev make automake
sudo apt-get install wget apache2-utils
# mysql
echo "mysql-server mysql-server/root_password password root" | sudo debconf-set-selections
echo "mysql-server mysql-server/root_password_again password root" | sudo debconf-set-selections
sudo apt-get -y install mysql-server mysql-client
sudo systemctl start mysql
sudo systemctl enable mysql

# postgres (not finish yet, need to setup default password afterward)
sudo apt-get install postgresql postgresql-contrib

# mongodb (not finish yet)
sudo apt install -y mongodb

# # redis (not finished, details link https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-redis-on-ubuntu-16-04)
# sudo apt-get install build-essential tcl
# cd /tmp
# curl -O http://download.redis.io/redis-stable.tar.gz
# tar xzvf redis-stable.tar.gz
# cd redis-stable
# make
# make test
# sudo make install
# sudo mkdir /etc/redis
# sudo cp /tmp/redis-stable/redis.conf /etc/redis
# sudo nano /etc/redis/redis.conf
