#!/bin/bash

if [ "$#" -lt 2 ] || [ "$#" -gt 3 ]; then
  echo "Usage: <windowTagToSearchFor> <thingToLaunch> [<workspace>]"
  exit 1
fi

GREP=$1
LAUNCH=$2
WORKSPACE=${3:-1}

# Search for the window with the specified tag and extract its PID
WINDOWINFO=$(hyprctl clients | awk -v class="$GREP" '
  /Window/ {window=$2; pid=""}
  /class:/ {if ($2 ~ class) class_found=1}
  /pid:/ {pid=$2}
  /tags:/ {if (class_found) {print window, pid; exit}}
')

if [ -z "$WINDOWINFO" ]; then
  echo "No window found with class: $GREP. Launching command: $LAUNCH on workspace $WORKSPACE"
  hyprctl --batch "dispatch workspace $WORKSPACE; dispatch exec $LAUNCH;"
  exit 0
fi

# Extract the PID from the window info
PID=$(echo "$WINDOWINFO" | awk '{print $2}')

# Focus the window with the found PID
hyprctl dispatch focuswindow pid:$PID
