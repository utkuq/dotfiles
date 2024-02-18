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
    --image $random_image \
    --clock \
    --indicator \
    --indicator-radius 300 \
    --indicator-thickness 7 \
    --effect-blur 7x5 \
    --effect-vignette 0.5:0.5 \
    --ring-color ffffff \
    --key-hl-color 880033 \
    --line-color 00000000 \
    --inside-color 00000088 \
    --separator-color 00000000 \
    --grace 2 \
    #--fade-in 0.05

# Default config
# swaylock \
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