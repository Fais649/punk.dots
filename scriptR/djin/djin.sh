#!/bin/bash

djin=$(cat options | fzf --height=10 --header "Where to?" --layout=reverse)

if [[ -z $djin ]]; then
	exit 0
fi

./$(echo $djin).sh
