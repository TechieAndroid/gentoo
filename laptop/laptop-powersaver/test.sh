#!/bin/bash

CAPACITY=$(cat /sys/class/power_supply/BAT1/capacity)
echo $CAPACITY
