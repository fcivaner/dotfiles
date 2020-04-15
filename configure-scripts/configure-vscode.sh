#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu" ]]; then
        # Linux
        ln -sf "$HOME"/.vscode-settings/*.json "$HOME/.config/Code/User/"
elif [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OSX
        ln -sf "$HOME/.vscode-settings/settings.json" "$HOME/Library/Application\ Support/Code/User/settings.json"
fi
