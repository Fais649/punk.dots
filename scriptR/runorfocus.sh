#!/bin/bash

if [ "$#" -lt 2 ] || [ "$#" -gt 3 ]; then
	echo "Usage: <windowTagToSearchFor> <thingToLaunch> [<workspace>]"
	exit 1
fi

GREP=$1
LAUNCH=$2
WORKSPACE=${3:-1}

# Search for the window with the specified tag and extract its PID in one call to hyprctl and awk
WINDOWINFO=$(hyprctl clients | awk -v class="$GREP" '
  /Window/ {window=$2; pid=""}
  /class:/ && $2 ~ class {class_found=1}
  /pid:/ {pid=$2}
  /tags:/ && class_found {print pid; exit}
')

# Check if window was found, otherwise launch the application
if [ -n "$WINDOWINFO" ]; then
	# Focus the window directly using the found PID
	hyprctl dispatch focuswindow class:$GREP
else
	echo "No window found with class: $GREP. Launching command: $LAUNCH on workspace $WORKSPACE"
	hyprctl --batch "dispatch workspace $WORKSPACE; dispatch exec $LAUNCH; dispatch focuswindow class:$GREP"
fi
