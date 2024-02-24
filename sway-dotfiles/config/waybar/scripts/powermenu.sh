#!/bin/bash

chosen=$(printf "Reboot\nShutdown\nLog Out" | wofi -dmenu -i )

case "$chosen" in
	"Reboot") sudo reboot ;;
	"Shutdown") poweroff ;;
	"Log Out") swaymsg exit ;;
	*) exit 1 ;;
esac