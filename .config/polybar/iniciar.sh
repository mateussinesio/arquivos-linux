#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/barra1.log /tmp/polybar2.log
polybar barra1 2>&1 | tee -a /tmp/barra1.log & disown
polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown

echo "As barras foram iniciadas."