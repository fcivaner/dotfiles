#!/usr/bin/env bash

alias g="git"
alias gs="git status"

## configure git bash completion
if [ -n "$BASH_VERSION" ];
then
    common_locations="
    /usr/local/git/contrib/completion/git-completion.bash
    /usr/local/git/contrib/completion/git-prompt.sh
    /usr/share/bash-completion/completions/git"
    
    for loc in $common_locations
    do
        if [ -f "$loc" ]; then
            source "$loc"
            return
        fi
    done
    
    ## if no bash completion found
    echo "dotfiles: git bash completion script not found."
fi