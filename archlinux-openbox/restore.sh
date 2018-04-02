#!/bin/env bash

rsync -r .config ~
rsync .Xresources ~
rsync .xprofile ~
rsync .zshrc ~

rsync -r etc /
rsync -r bin /usr/local
