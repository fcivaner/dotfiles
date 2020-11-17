#!/usr/bin/env bash

# copies dotfiles from home if a symlink farm is not used.

me=$(realpath "${BASH_SOURCE[0]}")
basedir=$(dirname "$(dirname "$me")")

echo "copying from local.."
rsync -r --existing --ignore-errors --copy-links "$HOME/" "$basedir/src"
