#!/bin/sh
# Omarchy-style system menu (Super+Escape) using fuzzel.
choice=$(printf '%s\n' "Lock" "Log out" "Suspend" "Reboot" "Shut down" | fuzzel --dmenu --prompt "System: " --lines 5)
case "$choice" in
    "Lock")      loginctl lock-session ;;
    "Log out")   hyprctl dispatch exit ;;
    "Suspend")   systemctl suspend ;;
    "Reboot")    systemctl reboot ;;
    "Shut down") systemctl poweroff ;;
esac
