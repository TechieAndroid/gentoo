#!/bin/bash

BATTERY=$(cat /sys/class/power_supply/BAT1/status)
CAPACITY=$(cat /sys/class/power_supply/BAT1/capacity)

while [[ $BATTERY == Discharging ]]; do

	if (( "$CAPACITY" <= '30' )); then

		echo 128 >> /sys/class/backlight/amdgpu_bl0/brightness;
		mpg123 /home/recompiler/Downloads/low_battery.mp3;

	fi

	if (( "$CAPACITY" <= '15' )); then 
		
		mpg123 /home/recompiler/Downloads/low_battery.mp3;
		loginctl suspend;

	fi

done
