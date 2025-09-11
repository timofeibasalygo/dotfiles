#!/bin/bash

# Simple script to manage desktop portals for dual GNOME/Hyprland setup

if [[ $XDG_CURRENT_DESKTOP == *"Hyprland"* ]]; then
    pkill -f xdg-desktop-portal-gnome
    
    # Ensure required portals are running
    systemctl --user start xdg-desktop-portal-hyprland
    systemctl --user start xdg-desktop-portal-gtk
    
elif [[ $XDG_CURRENT_DESKTOP == *"GNOME"* ]]; then
    # Kill conflicting Hyprland portal
    pkill -f xdg-desktop-portal-hyprland
    
    # Ensure GNOME portals are running
    systemctl --user start xdg-desktop-portal-gnome
    systemctl --user start xdg-desktop-portal-gtk
fi

echo "Configuration complete"
