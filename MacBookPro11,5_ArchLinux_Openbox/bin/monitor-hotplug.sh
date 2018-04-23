#!/bin/bash

function connect() {
	mons -s
}

function disconnect() {
	mons -o
}

xrandr | grep -E "(DisplayPort|HDMI)-. connected" &> /dev/null && connect || disconnect
