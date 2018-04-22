#!/bin/env bash

# yaourt
sudo pacman -S git curl zsh

curl -L install.ohmyz.sh | sh

git clone https://aur.archlinux.org/package-query.git
cd package-query
makepkg -si
cd ..
git clone https://aur.archlinux.org/yaourt.git
cd yaourt
makepkg -si
cd ..

# openbox
yaourt -S lxdm openbox oblogout obmenu lxappearance-obconf lxappearance

# network
yaourt -S network-manager-applet networkmanager networkmanager-openvpn

# desktop
yaourt -S dunst nitrogen rofi rofi-greenclip plank compton xtrlock polybar

# gui tools
yaourt -S guake shadowsocks-qt5 flameshot fontweak pcmanfm xarchiver mpv chinese-calendar gpicview

# input method
yaourt -S qtwebkit-bin fcitx-sogoupinyin fcitx-im

# cli tools
yaourt -S rsync openssh pigz p7zip unrar proxychains mons gvfs-smb

# audio
yaourt -S pulseaudio pulseaudio-alsa pulseaudio-bluetooth pamixer ponymix pa-applet-git

# fonts
yaourt -S noto-fonts-cjk noto-fonts noto-fonts-emoji ttf-fira-code ttf-monaco ttf-ubuntu-font-family

# performance tuning
yaourt -S acpid thermald mbpfan-git irqbalance driconf profile-sync-daemon linux-ck-haswell linux-ck-haswell-headers
 
# themes
yaourt -S gtk-engines archlinux-wallpaper lxdm-themes openbox-themes

# keyboard brightness
yaourt -S upower python-dbus dbus

# gesture
yaourt -S libinput-gestures gesture-manager-git
