#!/bin/env bash

git clone https://aur.archlinux.org/package-query.git
cd package-query
makepkg -si
cd ..
git clone https://aur.archlinux.org/yaourt.git
cd yaourt
makepkg -si
cd ..

yaourt -S guake openbox rsync openssh docker fcitx-googlepinyin fcitx lxdm dunst profile-sync-daemon polybar openbox-themes mpv xarchiver shadowsocks-qt5 flameshot rofi nitrogen rofi-greenclip plank openbox-themes lxdm-themes pigz p7zip unrar fontweak xtrlock xcompmgr proxychains libinput-gestures gesture-manager-git gtk-engins noto-fonts-cjk noto-fonts noto-fonts-emoji ttf-fira-code ttf-monaco ttf-ubuntu-font-family
