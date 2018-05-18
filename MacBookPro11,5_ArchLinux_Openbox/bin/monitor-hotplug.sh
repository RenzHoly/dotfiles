#!/bin/bash

function connect() {
	mons -s
}

function disconnect() {
	mons -o
}

sleep 1 && xrandr | grep -E "(DisplayPort|HDMI)-. connected" &> /dev/null && connect || disconnect
