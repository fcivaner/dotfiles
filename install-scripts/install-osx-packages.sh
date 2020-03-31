#!/bin/bash

(
    cd config || exit
    brew bundle
)

< config/vscode-extensions.txt xargs -L 1 echo code --install-extension | bash