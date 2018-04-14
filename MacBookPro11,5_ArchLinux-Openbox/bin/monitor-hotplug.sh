#!/bin/bash

function connect() {
	mons -s
	openbox --restart
	nitrogen --restore
}

function disconnect() {
	mons -o
	openbox --restart
	nitrogen --restore
}

xrandr | grep "DisplayPort-. connected" &> /dev/null && connect || disconnect
xrandr | grep "HDMI-. connected" &> /dev/null && connect || disconnect
