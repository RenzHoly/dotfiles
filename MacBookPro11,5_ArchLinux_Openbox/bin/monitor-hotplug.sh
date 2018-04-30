#!/bin/bash

displaynum=`ls /tmp/.X11-unix/* | sed s#/tmp/.X11-unix/X##`
export DISPLAY=":$displaynum.0"
export XAUTHORITY=$(ps -C Xorg -f --no-header | sed -n 's/.*-auth //; s/ -[^ ].*//; p')

function connect() {
	killall -w compton & mons -s && compton &
}

function disconnect() {
	killall -w compton & mons -o && compton &
}

sleep 1 && xrandr | grep -E "(DisplayPort|HDMI)-. connected" &> /dev/null && connect || disconnect
