#!/usr/bin/env sh

#OLD

## Add this to your wm startup file.

# Terminate already running bar instances
#killall -q polybar

# Wait until the processes have been shut down
#while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
#polybar -c ~/.config/polybar/config main &




#NEW

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar main 2>&1 | tee -a /tmp/polybar1.log & disown
#polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown

echo "Bars launched..."
