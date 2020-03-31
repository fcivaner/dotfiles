#!/bin/bash

me=$(realpath "${BASH_SOURCE[0]}")
basedir=$(dirname "$(dirname "$me")")
brewfile="$basedir/install-scripts/config/Brewfile"

brew bundle dump
mv "Brewfile" "$brewfile"