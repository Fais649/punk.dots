#!/bin/bash

scriptR=$(pwd)

if [ "$EUID" -eq 0 ]; then
	echo "Please do not run as root"
	exit
fi

read -rp "First time? (y/n): " first

if [ "$first" == "y" ]; then
	echo "updating system..."
	sudo pacman -Syu --noconfirm
fi

if ! command -v yay &>/dev/null; then
	echo "yay is not installed."
	echo "installing yay..."
	sudo pacman -S --needed git base-devel
	git clone https://aur.archlinux.org/yay-bin.git "$HOME"/yay
	cd "$HOME"/yay || exit
	makepkg -si
else
	echo "yay is installed."
fi

cd "$scriptR" || exit
yay -S --needed --noconfirm - <../yaypkgs.txt

read -rp "Apply Dots? (y/n): " dots

if [ "$dots" == "y" ]; then
	echo "Stowing dots..."
	stow -D ../
	stow ../
fi

read -rp "Set up Hibernation over swapfile for btrfs? (y/n): " hibernate

if [ "$hibernate" == "y" ]; then
	echo "Setting up Hibernation..."
	sudo ./setupHibernate.sh
fi
