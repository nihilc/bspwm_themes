#!/bin/sh
choson=$(printf "lock\nreboot\nshutdown" | rofi -dmenu -i -p "")

case "$choson" in
  "lock") slock ;;
  "reboot") reboot ;;
  "shutdown") poweroff ;;
  *) exit 1 ;;
esac
