#!/bin/bash

displaynum=`ls /tmp/.X11-unix/* | sed s#/tmp/.X11-unix/X##`
export DISPLAY=":$displaynum"
export XAUTHORITY=$(ps -C Xorg -f --no-header | sed -n 's/.*-auth //; s/ -[^ ].*//; p')

function connect() {
	mons -s
}

function disconnect() {
	mons -o
}

sleep 1 && xrandr | grep -E "(DisplayPort|HDMI)-. connected" &> /dev/null && connect || disconnect
