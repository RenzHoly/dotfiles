#!/bin/env bash

rsync -r ~/.config ./
rsync ~/.Xresources ./
rsync ~/.xprofile ./
rsync ~/.zshrc ./

rsync -r /etc ./
rsync -r /usr/local/bin ./
rsync -r /boot/loader ./
