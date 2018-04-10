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

# openbox
yaourt -S lxdm openbox lxappearance-obconf lxappearance oblogout obmenu

# desktop
yaourt -S dunst rofi nitrogen rofi-greenclip plank compton xtrlock polybar chinese-calendar

# gui tools
yaourt -S guake fcitx-googlepinyin fcitx-im shadowsocks-qt5 flameshot fontweak pcmanfm xarchiver mpv

# cli tools
yaourt -S rsync openssh profile-sync-daemon pigz p7zip unrar proxychains mons gvfs-smb

# audop
yaourt -S pulseaudio pulseaudio-alsa pulseaudio-bluetooth pamixer

# fonts
yaourt -S noto-fonts-cjk noto-fonts noto-fonts-emoji ttf-fira-code ttf-monaco ttf-ubuntu-font-family

# gesture
yaourt -S libinput-gestures gesture-manager-git

# temperature
yaourt -S cpupower thermald

# themes
yaourt -S gtk-engines archlinux-wallpaper lxdm-themes openbox-themes
