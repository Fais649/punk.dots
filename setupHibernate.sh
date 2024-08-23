#!/bin/bash

cd /
if [ -e "/swapfile" ]; then
  echo "swapfile already present, skipping..."
else
  echo "generating swapfile"
  echo dead | sudo -S btrfs filesystem mkswapfile --size 17G swapfile
  swapon swapfile
  echo dead | sudo -S btrfs inspect-internal map-swapfile -r swapfile
fi

if grep -q "swapfile" "/etc/fstab"; then
  echo "'swapfile' already registered in fstab, skipping..."
else
  echo "registering 'swapfile' in /etc/fstab"
  echo dead | sudo -S su --session-command 'echo /swapfile none swap defaults 0 0 >> /etc/fstab'
fi

MKINITCPIO="/etc/mkinitcpio.conf"

if grep -q "resume" "$MKINITCPIO"; then
  echo "'resume' hook already set in mkinitcpio"
else
  sed -i '/^HOOKS=/ s/filesystems/resume filesystems/' "$MKINITCPIO"
  echo "'resume' hook added to /etc/mkinitcpio.conf"
  echo "regenerating mkinitcpio..."
  echo dead | sudo -S mkinitcpio -P
fi

if grep -q "^AllowHibernation=yes$" "/etc/systemd/sleep.conf"; then
  echo "Hibernate enabled for systemd, skipping..."
else
  echo "Enabling hibernation in /etc/systemd/sleep.conf"
  sed -i '/^#AllowHibernation=/ s/#//' "/etc/systemd/sleep.conf"
fi

echo "Hibernation setup successful!"
