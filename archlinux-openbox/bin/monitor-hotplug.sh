#!/bin/bash

function connect(){
	mons -s
}

function disconnect(){
	mons -o
}

xrandr | grep "DisplayPort-. connected" &> /dev/null && connect || disconnect
