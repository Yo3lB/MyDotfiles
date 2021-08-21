#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Dual Monitor

if type "xrandr"; then
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$m polybar --reload BarGui & 
        MONITOR=$m polybar --reload BarApps &
        MONITOR=$m polybar --reload BarGuiBottom & 
        MONITOR=$m polybar --reload BarSystem &
    done
else
        polybar --reload BarGui & 
        polybar --reload BarApps &
        polybar --reload BarGuiBottom & 
        polybar --reload BarSystem &
fi
# Launch Polybar, using default config location ~/.config/polybar/config

#polybar BarGui & 
#polybar BarApps &
#polybar BarGuiBottom & 
#polybar BarSystem &

echo "Polybar launched..."


