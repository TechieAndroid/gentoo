#!/bin/bash
xrdb -merge ~/.Xresources
eval $(dbus-launch --sh-syntax --exit-with-session i3)
