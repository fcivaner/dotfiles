#!/usr/bin/env bash

# apt
sudo apt update
sudo apt -y dist-upgrade
sudo apt -y autoremove

# snap
sudo snap refresh

# python
sudo pip3 install --upgrade pip
sudo pip install --upgrade pip

# nodejs
sudo npm install npm@latest -g

sudo npm cache clean -f
sudo npm install -g n
sudo n stable
