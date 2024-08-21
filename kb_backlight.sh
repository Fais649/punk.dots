BRIGHTNESS=$(echo dead | sudo -S cat /sys/class/leds/asus\:\:kbd_backlight/brightness)

if [[ $BRIGHTNESS -eq 0 ]]; then
	BRIGHTNESS=1
else
	BRIGHTNESS=0
fi

echo $BRIGHTNESS > /sys/class/leds/asus\:\:kbd_backlight/brightness
