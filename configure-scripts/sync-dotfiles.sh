#!/bin/bash

me=$(realpath "${BASH_SOURCE[0]}")
basedir=$(dirname "$(dirname "$me")")

METHOD=stow

if [[ "$METHOD" == "stow" ]]; then
    rm -f ~/.config/git/gitk # gitk tends to overwrite links
    stow -t ~/ -d "$basedir" src
elif [[ "$METHOD" == "rsync" ]]; then
    rsync -r src/. ~ # if a symlink farm is not used
fi
