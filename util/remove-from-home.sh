#!/bin/bash

# removes dotfiles from home if a symlink farm is not used.

me=$(realpath "${BASH_SOURCE[0]}")
basedir=$(dirname "$(dirname "$me")")

files=$(cd "$basedir/src" || exit;find . -type f)
for f in $files
do
    echo "deleting $f"
    (cd ~/ || exit;rm "$f")
done