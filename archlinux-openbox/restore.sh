#!/bin/env bash

rsync -r .config ~
rsync .Xresources ~
rsync .zshrc ~
rsync .asoundrc ~
rsync .xprofile ~

rsync -r etc /
rsync -r bin /usr/local
