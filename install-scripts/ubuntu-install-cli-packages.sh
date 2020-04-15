#!/bin/bash

## install server tools

sudo apt install -y stow

## filesystems
sudo apt install -y sshfs jmtpfs gvfs gvfs-backends gvfs-fuse

## build tools
sudo apt install -y build-essential

## node
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt install -y nodejs

## python
sudo apt install -y python3 python3-pip
python3 -m pip install -U pycodestyle --user
python3 -m pip install -U pylint --user
python3 -m pip install -U autopep8 --user
python3 -m pip install --user --upgrade setuptools wheel
python3 -m pip install --user --upgrade twine

## go
export GO_VERSION="1.13.6"
(
    tmp_folder=$(mktemp -d)
    cd "$tmp_folder" || exit
    
    wget "https://dl.google.com/go/go$GO_VERSION.linux-amd64.tar.gz"
    sudo tar -C /usr/local -xzf "go$GO_VERSION.linux-amd64.tar.gz"
    
    rm -r "$tmp_folder"
)
export GOPATH=$HOME/go

## docker
curl -fsSL https://get.docker.com | sh
sudo usermod -aG docker "$USER"

## docker-compose
DOCKER_COMPOSE_VERSION="1.25.3"

sudo curl -L "https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

## monitoring
sudo apt install -y htop iotop sensors

## files & compression
sudo apt install -y p7zip-full unzip
sudo apt install -y jdupes
sudo apt install -y wipe
sudo apt install -y mmv

## terminal tools
sudo apt install -y ranger
sudo apt install -y bash-completion
sudo apt install -y moreutils
sudo apt install -y colordiff
sudo apt install -y autojump

## tmux
sudo apt install -y tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

## git
sudo apt install -y git gitk
sudo apt install -y tig
sudo snap install hub --classic

## mercurial
sudo apt install -y mercurial

## code quality/metrics
sudo apt install -y cloc
go get -u github.com/zricethezav/gitleaks

## w3m
sudo apt install -y w3m

## vim
sudo apt install -y vim
git config --global core.editor "vim"
sudo curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo chown -R "$USER" ~/.vim

## shellcheck
(
    tmp_folder=$(mktemp -d)
    cd "$tmp_folder" || exit
    
    scversion="stable" # or "v0.4.7", or "latest"
    wget -qO- "https://storage.googleapis.com/shellcheck/shellcheck-${scversion?}.linux.x86_64.tar.xz" | tar -xJv
    sudo cp "shellcheck-${scversion}/shellcheck" /usr/bin/
    shellcheck --version
    
    rm -r "$tmp_folder"
)

## fzf
(
    tmp_dir=$(mktemp -d)
    cd "$tmp_dir" || exit
    
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
)

## sdkman
curl -s "https://get.sdkman.io" | bash
