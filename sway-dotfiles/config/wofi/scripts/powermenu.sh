#!/bin/bash

chosen=$(printf "Reboot\nShutdown\nLog Out" | wofi -dmenu -i )

case "$chosen" in
	"Reboot") reboot ;;
	"Shutdown") poweroff ;;
	"Log Out") exit ;;
	*) exit 1 ;;
esac