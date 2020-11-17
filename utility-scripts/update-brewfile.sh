#!/usr/bin/env bash

me=$(realpath "${BASH_SOURCE[0]}")
basedir=$(dirname "$(dirname "$me")")
brewfile="$basedir/install-scripts/install-configurations/Brewfile"

brew bundle dump
mv "Brewfile" "$brewfile"