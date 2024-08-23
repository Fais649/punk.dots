#!/bin/bash

STATUS=$(cat /sys/class/power_supply/BAT0/status)

if [[ "$STATUS" == "Discharging" ]]; then
	echo dead | sudo -S ryzenadj -a 10000 -b 10000 -c 10000
else
	echo dead | sudo -S ryzenadj -a 30000 -b 30000 -c 30000
fi
