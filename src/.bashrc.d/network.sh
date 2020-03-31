#!/bin/bash

set_hostname() {
    echo "$1" > /etc/hostname
    hostname "$1"
}

wholistens() {
    PORT=$1
    lsof -nP -i4TCP:"$PORT" -sTCP:LISTEN
}

alias publicip='curl ipinfo.io/ip'
alias wholistens='wholistens'
alias listeners='lsof -nP -iTCP -sTCP:LISTEN'
alias set_hostname='set_hostname'
alias grepip="grep -E -o '([0-9]{1,3}[\.]){3}[0-9]{1,3}'"

## Stop after sending count ECHO_REQUEST packets
alias ping='ping -c 5'
## Do not wait interval 1 second, go fast
alias fastping='ping -c 100 -s.2'

alias ports='netstat -tulanp'