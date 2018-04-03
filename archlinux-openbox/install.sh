#!/bin/env bash

sudo pacman -S git curl zsh

curl -L install.ohmyz.sh | sudo sh

git clone https://aur.archlinux.org/package-query.git
cd package-query
makepkg -si
cd ..
git clone https://aur.archlinux.org/yaourt.git
cd yaourt
makepkg -si
cd ..

yaourt -S guake openbox rsync openssh fcitx-googlepinyin fcitx-im lxdm dunst profile-sync-daemon polybar openbox-themes mpv xarchiver shadowsocks-qt5 flameshot rofi nitrogen rofi-greenclip plank openbox-themes lxdm-themes pigz p7zip unrar fontweak xtrlock compton proxychains gtk-engines noto-fonts-cjk noto-fonts noto-fonts-emoji ttf-fira-code ttf-monaco ttf-ubuntu-font-family pcmanfm archlinux-wallpaper gvfs-smb lxappearance-obconf lxappearance oblogout archlinux-wallpaper pulseaudio pulseaudio-alsa pulseaudio-bluetooth pamixer mons

yaourt -S libinput-gestures gesture-manager-git
