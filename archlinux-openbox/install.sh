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
sudo pacman -S lxdm openbox oblogout obmenu lxappearance-obconf lxappearance

# desktop
sudo pacman -S dunst nitrogen rofi rofi-greenclip plank compton xtrlock polybar

# gui tools
sudo pacman -S guake shadowsocks-qt5 flameshot fontweak pcmanfm xarchiver mpv chinese-calendar

# input method
sudo pacman -S qtwebkit-bin fcitx-sogoupinyin fcitx-im

# cli tools
sudo pacman -S rsync openssh profile-sync-daemon pigz p7zip unrar proxychains mons gvfs-smb

# audop
sudo pacman -S pulseaudio pulseaudio-alsa pulseaudio-bluetooth pamixer pa-applet-git

# fonts
sudo pacman -S noto-fonts-cjk noto-fonts noto-fonts-emoji ttf-fira-code ttf-monaco ttf-ubuntu-font-family

# gesture
sudo pacman -S libinput-gestures gesture-manager-git

# temperature
sudo pacman -S cpupower thermald

# themes
sudo pacman -S gtk-engines archlinux-wallpaper lxdm-themes openbox-themes
