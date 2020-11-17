#!/usr/bin/env bash

if [[ "$OSTYPE" == "linux-gnu" ]];
then
    # Linux
    ./install-scripts/ubuntu-update-upgrade.sh
    ./install-scripts/ubuntu-install-server-packages.sh
    ./install-scripts/ubuntu-install-desktop-packages.sh
elif [[ "$OSTYPE" == "darwin"* ]];
then
    # Mac OSX
    ./install-scripts/install-osx-packages.sh
fi
