#!/bin/bash

STATE=$(cat /sys/class/power_supply/BAT1/status)
CAPACITY=$(cat /sys/class/power_supply/BAT1/capacity)

        if [ "$STATE" == 'Discharging' ] && [ "$CAPACITY" -le '30' ]; then

                echo 128 >> /sys/class/backlight/amdgpu_bl0/brightness;
                mpg123 /home/recompiler/Downloads/low_battery.mp3;

        fi

        if [ "$STATE" == 'Discharging' ] && [ "$CAPACITY" -le '15' ]; then      
                
                mpg123 /home/recompiler/Downloads/low_battery.mp3;
                loginctl suspend;

        fi
