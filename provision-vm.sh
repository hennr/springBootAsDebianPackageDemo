#!/bin/bash

# add jessie backports for openJDK 8
sudo echo "
deb http://httpredir.debian.org/debian jessie main
deb http://security.debian.org/ jessie/updates main
deb http://ftp.debian.org/debian jessie-backports main
" > /etc/apt/sources.list

# activate backports repo
sudo apt-get update

# install java 8
sudo apt-get install openjdk-8-jre-headless --yes --no-install-recommends

# install the spring boot app
sudo dpkg -i /vagrant/target/*.deb

echo "app is up and running under http://192.168.23.42:8080/health"
