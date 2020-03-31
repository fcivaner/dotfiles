#!/bin/bash

me=$(realpath "${BASH_SOURCE[0]}")
basedir=$(dirname "$(dirname "$me")")
extensions_file="$basedir/install-scripts/config/vscode-extensions.txt"

{ code --list-extensions; cat "$extensions_file"; } | sort | uniq > "vscode-extensions-tmp.txt"
mv "vscode-extensions-tmp.txt" "$extensions_file"