#!/usr/bin/env bash

function open () {
    xdg-open "$@">/dev/null 2>&1
}