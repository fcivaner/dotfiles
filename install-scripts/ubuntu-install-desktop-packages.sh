#!/usr/bin/env bash

## Ubuntu packages for servers.

## for PPAs
sudo apt install software-properties-common

## filesystems
sudo apt install -y sshfs jmtpfs gvfs gvfs-backends gvfs-fuse
sudo apt install -y exfat-fuse exfat-utils

## build tools
sudo apt install -y build-essential

## w3m
sudo apt install -y w3m

## python
sudo apt install -y python3 python3-pip
python3 -m pip install -U \
pycodestyle \
pylint \
autopep8 \
black \
--user

python3 -m pip install --user --upgrade setuptools wheel
python3 -m pip install --user --upgrade twine

## ruby
sudo apt-get install ruby-full

## go
export GO_VERSION="1.14.2"
(
    tmp_folder=$(mktemp -d)
    cd "$tmp_folder" || exit
    
    sudo rm -rf /usr/local/go
    wget "https://dl.google.com/go/go$GO_VERSION.linux-amd64.tar.gz"
    sudo tar -C /usr/local -xzf "go$GO_VERSION.linux-amd64.tar.gz"
    
    rm -rf "$tmp_folder"
)
export GOPATH=$HOME/go

## go packages
go get github.com/kalafut/imohash/...

## sdkman
curl -s "https://get.sdkman.io" | bash

## ansible
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible

## npm packages
npm i -g brightness

## git
sudo apt install -y git gitk
sudo apt install -y tig
sudo snap install hub --classic

## mercurial
sudo apt install -y mercurial

## code quality/metrics
sudo apt install -y cloc
docker pull zricethezav/gitleaks

## aws
(
    tmp_dir=$(mktemp -d)
    cd "$tmp_dir" || exit
    
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
)

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