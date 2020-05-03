#!/usr/bin/env bash

if [ -n "$ZSH_VERSION" ];
then
    [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
elif [ -n "$BASH_VERSION" ];
then
    [ -f ~/.fzf.bash ] && source ~/.fzf.bash
fi