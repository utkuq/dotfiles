# [1. HYPRLAND CONFIG](hyprland-dotfiles/README.md)

![Hyprland Screenshot](hyprland-dotfiles/Screenshots/1.png)
<br><br>

# [2. i3WM CONFIG](i3wm-dotfiles/README.md)

Currently no image for i3 <br>
<br><br>

# [3. SWAY CONFIG](sway-dotfiles/README.md)

![Sway Screenshot](sway-dotfiles/Screenshots/1.png)
<br><br>

# WALLPAPERS

[HERE](hyprland-dotfiles/config/wallpapers/)
<br><br>

## Removing Beeping Sound of Archlinux

### Step 1: Change Directory to Specified Directory

```shell
cd /etc/modprobe.d/
```

### Step 2: Create a `.conf` file

```shell
sudo touch nomorebeeps.conf
```

### Step 3: Add the Following Line to the Config

Note that changes will be effective after rebooting the system.

```shell
blacklist pcspkr
```
