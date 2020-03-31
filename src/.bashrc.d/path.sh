#!/bin/bash

paths=$(cat ~/.paths)

for path in $paths
do
  PATH=$PATH:$path
done
