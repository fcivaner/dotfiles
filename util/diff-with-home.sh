#!/usr/bin/env bash

# takes a diff with home if a symlink farm is not used.

me=$(realpath "${BASH_SOURCE[0]}")
basedir=$(dirname "$(dirname "$me")")

files=$(cd "$basedir/src" || exit;find . -type f)
for f in $files
do
    file_repo=$(cd "$basedir/src" || exit;realpath "$f")
    file_local=$(cd ~/ || exit;realpath "$f")

    echo "diff of $f: "
    diff "$file_repo" "$file_local"
done