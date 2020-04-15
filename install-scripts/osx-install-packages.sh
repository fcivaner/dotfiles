#!/bin/bash

(
    cd install-configurations || exit
    brew bundle
)

< install-configurations/vscode-extensions.txt xargs -L 1 echo code --install-extension | bash
