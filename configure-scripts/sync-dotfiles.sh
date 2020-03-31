#!/bin/bash

me=$(realpath "${BASH_SOURCE[0]}")
basedir=$(dirname "$(dirname "$me")")

# rsync -r src/. ~ # if a symlink farm is not used

stow -t ~/ -d "$basedir" src