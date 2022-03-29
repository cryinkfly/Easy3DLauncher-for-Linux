#!/bin/bash

FIFO="$(mktemp)"
rm $FIFO
mkfifo $FIFO
# Kanal wird etabliert:
exec 3<> $FIFO
# Yad wird gestartet:
yad --notification --command='cmd -c pacui u' --listen <&3 &
# Menü wird definiert:
>&3 echo "menu:\
Shortcuts!./shortcuts-dialog.sh|\
Configuration!./config-dialog.sh|\
Close!pkill yad \
"
# Tooltip wird definiert:
>&3 echo "TOOLTIP:Easy3DLauncher - This tool allows you to execute some commands with using the mouse."
# Icon wird definiert:
>&3 echo "icon:/usr/share/icons/Adwaita/16x16/emblems/emblem-favorite-symbolic.symbolic.png"
