#!/bin/bash - 

if [[ "$OSTYPE" == "linux-gnu" ]]; then
            # Linux
            ./install-scripts/install-ubuntu-packages.sh
elif [[ "$OSTYPE" == "darwin"* ]]; then
            # Mac OSX
            ./install-scripts/install-osx-packages.sh
fi

