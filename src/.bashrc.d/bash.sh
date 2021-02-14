#!/usr/bin/env bash

if [ "$BASH" ];then
    alias c='clear'
    alias dotfiles-reload="source ~/.bashrc"
    alias histsave="history -a"
    alias histload="history -r"
    
    ## command history
    
    ## append to the history file, don't overwrite it
    shopt -s histappend
    
    ## check the window size after each command and, if necessary,
    ## update the values of LINES and COLUMNS.
    shopt -s checkwinsize

    ## editor
    export VISUAL=vim
    
    ## bash history configuration
    HISTCONTROL=
    HISTSIZE=100000
    HISTFILESIZE=2000000
    HISTTIMEFORMAT=$(echo -e "\e[90m[%d-%m-%yT%H-%M-%S]\e[39m  ")
    HISTIGNORE='rmdir *:/bin/rm *:rm *:exit:*poweroff:*reboot:git reset*:g reset*:*password*:*PASSWORD*:export AWS_*: *'
    
    ## enable programmable completion features (you don't need to enable
    ## this, if it's already enabled in /etc/bash.bashrc and /etc/profile
    ## sources /etc/bash.bashrc).
    if ! shopt -oq posix; then
        if [ -f /usr/share/bash-completion/bash_completion ]; then
            . /usr/share/bash-completion/bash_completion
            elif [ -f /etc/bash_completion ]; then
            . /etc/bash_completion
        fi
    fi
    
    ## print dates in long iso format
    export TIME_STYLE=long-iso
fi
