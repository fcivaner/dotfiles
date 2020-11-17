#!/usr/bin/env bash

# desktop
gsettings set org.gnome.desktop.interface enable-animations false
gsettings set org.gnome.shell.app-switcher current-workspace-only true
gsettings set org.gnome.mutter workspaces-only-on-primary false
gsettings set org.gnome.shell.extensions.dash-to-dock isolate-workspaces true

# files
gsettings set org.gnome.desktop.privacy remember-recent-files false
gsettings set org.gnome.nautilus.preferences always-use-location-entry true
gsettings set org.gtk.Settings.FileChooser sort-directories-first true