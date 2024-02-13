#! /bin/sh

chosen=$(printf "Reboot\nShutdown\nLog Out" | rofi -dmenu -i )

case "$chosen" in
	"Reboot") reboot ;;
	"Shutdown") poweroff ;;
	"Log Out") i3-msg exit ;;
	*) exit 1 ;;
esac