#!/usr/bin/env bash

# desktop
gsettings set org.gnome.desktop.interface enable-animations false

# files
gsettings set org.gnome.desktop.privacy remember-recent-files false
gsettings set org.gnome.nautilus.preferences always-use-location-entry true
gsettings set org.gtk.Settings.FileChooser sort-directories-first true
