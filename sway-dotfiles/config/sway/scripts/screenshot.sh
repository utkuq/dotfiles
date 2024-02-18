#!/bin/bash

filename=$(date +"%d-%m-%Y__%H-%M")

grim -g "$(slurp -d)" - | tee ~/Pictures/$filename.png | wl-copy

notify-send "Screenshot" "Image saved at '~/Pictures' and copied to the clipboard"