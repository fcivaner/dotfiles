#!/usr/bin/env bash

if [ "$BASH" ];then
    PATHS_FILE="$HOME/.paths"
    
    if [ -f "$PATHS_FILE" ]; then
        paths=$(cat "$PATHS_FILE")
        
        for p in $paths
        do
            PATH=$PATH:$p
        done
    fi
fi