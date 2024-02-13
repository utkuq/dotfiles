#!/bin/bash

user=$(whoami)
folder="/home/$user/.config/wallpapers"

num_of_files=$(ls -1 $folder | wc -l)

image_number=$((1 + RANDOM % num_of_files))

swaylock \
    --image ~/Pictures/$image_number.png \
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