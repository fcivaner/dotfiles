#!/usr/bin/env bash

me=$(realpath "${BASH_SOURCE[0]}")
basedir=$(dirname "$(dirname "$me")")
extensions_file="$basedir/install-scripts/install-configurations/vscode-extensions.txt"

tmp_file=$(mktemp)
{ code --list-extensions; cat "$extensions_file"; } | sort | uniq > "$tmp_file"
mv "$tmp_file" "$extensions_file"