#!/bin/bash

## update & upgrade
sudo apt update
sudo apt -y dist-upgrade
sudo apt -y autoremove

sudo snap refresh
