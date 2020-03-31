#!/bin/bash

scripts=$(find . -name "*.sh")

for script in $scripts
do
    echo "$script"
    shellcheck "$script"
done