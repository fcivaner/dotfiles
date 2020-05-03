#!/usr/bin/env bash

LINUX_VSCODE_CONFIG_PATH="$HOME/.config/Code/User/"
OSX_VSCODE_CONFIG_PATH="$HOME/Library/Application\ Support/Code/User/"

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    # Linux
    mkdir -p "$LINUX_VSCODE_CONFIG_PATH"
    ln -sf "$HOME"/.vscode-settings/*.json "$LINUX_VSCODE_CONFIG_PATH"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX
    mkdir -p "$OSX_VSCODE_CONFIG_PATH"
    ln -sf "$HOME"/.vscode-settings/*.json "$OSX_VSCODE_CONFIG_PATH"
fi
