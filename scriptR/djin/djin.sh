#!/bin/bash

while true; do
	# djin=$(cat options | fzf --height=10 --header "Where to?" --layout=reverse)
	djin=$(echo ".." && fd --type d --hidden --max-depth 1 | fzf --height=10 --header "Where to?" --layout=reverse --bind "esc:abort")

	if [[ -z $djin ]]; then
		break
	fi

	if [ "$djin" == ".." ]; then
		cd ..
	fi

	# ./$(ec1ho $djin).sh
	cd "$djin" || exit

done

exec zsh
