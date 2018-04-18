#!/bin/bash

function connect() {
	killall compton
	mons -s
	compton &
}

function disconnect() {
	killall compton
	mons -o
	compton &
}

xrandr | grep -E "(DisplayPort|HDMI)-. connected" &> /dev/null && connect || disconnect
