#!/usr/bin/env bash

dockerbash() {
    docker exec -i -t "$1" /bin/bash
}
dockersh() {
    docker exec -i -t "$1" /bin/sh
}
alias d='docker'
alias dbash='dockerbash'
alias dsh='dockersh'

alias dstopall='docker stop $(docker ps -q)'
alias drmall='docker rm -f $(docker ps -qa)'
alias dcleanimages='docker rmi -f $(docker images --filter "dangling=true" -q --no-trunc)'
alias drmimages='docker rmi -f $(docker images -q)'
alias drmvolumes='docker volume rm $(docker volume ls -q)'
alias dprune='docker system prune'
alias dservicelogs='sudo journalctl -fu docker.service'
alias dockergroup='sudo usermod -aG docker $USER'
