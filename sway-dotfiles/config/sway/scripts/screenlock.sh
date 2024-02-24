#!/bin/bash

user=`env | grep -E "^USER="`
user=${user//USER=}
# echo $user
folder="/home/$user/.config/wallpapers"
extensions=("jpg" "png") 
extension=$(shuf -n 1 -e "${extensions[@]}")
images=$(find "$folder" -type f -name "*.$extension" | sort -R)
random_image=$(echo "$images" | shuf -n 1)

swaylock \
    --color 000000 \
    --clock \
    --indicator \
    --datestr %d/%m/%Y \
    --indicator-radius 300 \
    --indicator-thickness 10 \
    --effect-blur 7x5 \
    --effect-vignette 0.5:0.5 \
    --ring-color ffffff00 \
    --key-hl-color 880033 \
    --line-color 00000000 \
    --inside-color 00000088 \
    --separator-color 00000000 \
    --grace 0 \
    --fade-in 0.1

# Default config 
# swaylock \
#   ----image $random_image \
# 	--screenshots \
# 	--clock \
# 	--indicator \
# 	--indicator-radius 100 \
# 	--indicator-thickness 7 \
# 	--effect-blur 7x5 \
# 	--effect-vignette 0.5:0.5 \
# 	--ring-color bb00cc \
# 	--key-hl-color 880033 \
# 	--line-color 00000000 \
# 	--inside-color 00000088 \
# 	--separator-color 00000000 \
# 	--grace 2 \
# 	--fade-in 0.2