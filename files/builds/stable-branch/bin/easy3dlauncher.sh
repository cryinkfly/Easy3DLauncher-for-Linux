#!/bin/bash

####################################################################################################
# Name:         Easy3DLauncher for Linux - Launcher (Linux)                                        #
# Description:  With this program you can execute some commands with the mouse on Linux.           #
# Author:       Steve Zabka                                                                        #
# Author URI:   https://cryinkfly.com                                                              #
# License:      MIT                                                                                #
# Copyright (c) 2022                                                                               #
# Time/Date:    09:00/06.04.2022                                                                   #
# Version:      0.0.5                                                                              #
####################################################################################################

# Path: /$HOME/.config/Easy3DLauncher/bin/easy3dlauncher.sh

###############################################################################################################################################################
# ALL LOG-FUNCTIONS ARE ARRANGED HERE:                                                                                                                        #
###############################################################################################################################################################

Easy3DLauncher="$(mktemp)"
rm $Easy3DLauncher
mkfifo $Easy3DLauncher
# Kanal wird etabliert:
exec 3<> $Easy3DLauncher
# Yad wird gestartet:
yad --notification --command='./shortcuts.sh' --listen <&3 &
# Menü wird definiert:
>&3 echo "menu:\
Shortcuts ...!./shortcuts.sh!/$HOME/.local/share/icons/Easy3DLauncher/favorite.svg|\
Workspace ...!./workspace.sh!/$HOME/.local/share/icons/Easy3DLauncher/window.svg|\
Documentation ...!./help.sh!/$HOME/.local/share/icons/Easy3DLauncher/help.svg|\
Settings ...!./settings.sh!/$HOME/.local/share/icons/Easy3DLauncher/settings.svg|\
About ...!./about.sh!/$HOME/.local/share/icons/Easy3DLauncher/about.svg|\
Exit ...!pkill yad!/$HOME/.local/share/icons/Easy3DLauncher/exit.svg \
"
# Tooltip wird definiert:
>&3 echo "TOOLTIP:Easy3DLauncher - This tool allows you to execute some commands with using the mouse."
# Icon wird definiert:
>&3 echo "icon:/$HOME/.local/share/icons/Easy3DLauncher/launcher.svg"
