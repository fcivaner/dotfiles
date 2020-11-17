#!/usr/bin/env bash

## Ubuntu packages for servers.

## for PPAs
sudo apt install software-properties-common

## files & compression
sudo apt install -y stow
sudo apt install -y p7zip-full unzip
sudo apt install -y jdupes
sudo apt install -y wipe
sudo apt install -y mmv

## monitoring
sudo apt install -y htop iotop lm-sensors nethogs

## terminal tools
sudo apt install -y ranger
sudo apt install -y bash-completion
sudo apt install -y moreutils
sudo apt install -y colordiff
sudo apt install -y autojump

## fzf
(
    tmp_dir=$(mktemp -d)
    cd "$tmp_dir" || exit
    
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install --no-update-rc --key-bindings --completion
)

## tmux
sudo apt install -y tmux
sudo apt install -y xclip xsel # for tmux-yank
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

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
    
    rm -rf "$tmp_folder"
)

## nodejs
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

## npm packages
sudo npm i -g safe-rm
