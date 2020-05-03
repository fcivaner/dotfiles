#!/usr/bin/env bash

alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

alias mount='mount |column -t'

## do not delete / or prompt if deleting more than 3 files at a time
alias rm='rm -I --preserve-root'
 
## confirmation
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

## Parenting changing perms on /
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

## disk usage
alias df='df -H'
alias du='du -ch'
alias duh='du -hs * | sort -hr'