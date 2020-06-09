#!/usr/bin/env bash

alias rm='safe-rm'
alias rmdir='/bin/rm -d'

alias la='ls -AF'
alias l='ls -CF'
alias ll="ls -lhAGF"

alias overkill='kill -9'

alias tree='tree -a -I '.git''

## wget auto continue
alias wget='wget -c'

## make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

## calculator
alias bc='bc -l'

## locate
alias loc='locate'

## get_targz
get_targz() {
    curl -o "$2.tar.gz" "$1"
    mkdir "$2"
    tar -xzf "$2.tar.gz" -C "$2" --strip-components=1
    rm "$2.tar.gz"
}
alias get_targz="get_targz"

## time
alias get_timestamp="date -u +'%Y-%m-%dT%H-%M-%SZ'"

## Add an "alert" alias for long running commands. Use like so:
##   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

## set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

## capture output
capture_output(){
    $1 > out.log 2>error.log
}
