#!/bin/bash

## install desktop tools

## gdebi
sudo apt install -y gdebi

## vscode
sudo snap install code --classic

< install-configurations/vscode-extensions.txt xargs -L 1 echo code --install-extension | bash

## spotify
sudo snap install spotify

## idea
sudo snap install intellij-idea-community --classic

## pycharm
sudo snap install pycharm-community --classic

## virtualbox
sudo sh -c "echo 'deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian bionic contrib' > /etc/apt/sources.list.d/virtualbox.list"
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt update
sudo apt install -y virtualbox-6.1

## vagrant
(
    VAGRANT_VER="2.2.6"
    
    sudo apt -y remove vagrant
    
    tmp_folder=$(mktemp -d)
    cd "$tmp_folder" || exit
    
    wget "https://releases.hashicorp.com/vagrant/${VAGRANT_VER}/vagrant_${VAGRANT_VER}_x86_64.deb"
    sudo dpkg -i vagrant_"${VAGRANT_VER}_x86_64.deb"
    sudo apt -f install
    vagrant plugin expunge --force
    
    rm -r "$tmp_folder"
)