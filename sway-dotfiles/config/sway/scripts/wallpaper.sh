# Default wallpaper (more resolutions are available in /usr/share/backgrounds/sway/)
# output * bg ~/.config/wallpapers/9.jpg fill


# user=$(whoami)
# folder="/home/$user/.config/wallpapers"

# num_of_files=$(ls -1 $folder | wc -l)

# image_number=$((1 + RANDOM % num_of_files))
# image_path="~/.config/wallpapers/$image_number.jpg"
# echo $image_path

# # output * bg ~/.config/wallpapers/$image_number.jpg fill


#!/bin/bash
user=`env | grep -E "^USER="`
user=${user//USER=}
# echo $user
folder="/home/$user/.config/wallpapers"
extensions=("jpg" "png") 
extension=$(shuf -n 1 -e "${extensions[@]}")
images=$(find "$folder" -type f -name "*.$extension" | sort -R)
random_image=$(echo "$images" | shuf -n 1)
# echo $random_image
swaybg -i $random_image -m fill