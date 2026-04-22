#!/usr/bin/env bash

# kill existing bars
killall -q polybar

# wait until fully closed
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# launch bar
polybar example &
