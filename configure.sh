#!/bin/bash

execute_order=" \
        configure-scripts/sync-dotfiles.sh \
        configure-scripts/configure-vscode.sh \
        configure-scripts/configure-git.sh \
        "

for script in $execute_order
do
    echo "running $script.."
    bash "$script"
done
