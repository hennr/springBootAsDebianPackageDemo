#!/bin/bash

# install java 8
sudo apt-get update
sudo apt-get install openjdk-8-jre-headless --yes --no-install-recommends

# install the spring boot app
if [ -f /vagrant/target/*.deb ]
then
  sudo dpkg -i /vagrant/target/*.deb;
else
  echo "ERROR: No *.deb file found. Did you run 'mvn package' already?"
  exit 1
fi

echo "app is up and running under http://192.168.23.42:8080/health"
