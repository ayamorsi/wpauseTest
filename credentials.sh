#!/bin/bash

#apache
apt-get update
apt-get install apache2 -y 
systemctl stop apache2.service
systemctl start apache2.service
systemctl restart apache2.service
systemctl reload apache2.service

#nodejs
apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
apt-get install nodejs -y

#angular
npm install -g @angular/cli -y

#git
apt-get install git-core git-gui git-doc -y
git config --global user.name "$1"
git config --global user.email "$2"

#typescript
npm install -g typescript@latest -y

#zip
apt-get install zip unzip -qy