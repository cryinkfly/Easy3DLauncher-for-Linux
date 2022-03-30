#!/bin/bash

####################################################################################################
# Name:         Easy3DLauncher for Linux - Launcher (Linux)                                        #
# Description:  With this program you can execute some commands with the mouse on Linux.           #
# Author:       Steve Zabka                                                                        #
# Author URI:   https://cryinkfly.com                                                              #
# License:      MIT                                                                                #
# Copyright (c) 2022                                                                               #
# Time/Date:    15:30/30.03.2022                                                                   #
# Version:      0.0.2                                                                              #
####################################################################################################

# Path: /$HOME/.config/Easy3DLauncher/bin/shortcuts-dialog.sh

###############################################################################################################################################################
# ALL LOG-FUNCTIONS ARE ARRANGED HERE:                                                                                                                        #
###############################################################################################################################################################

Easy3DLauncher="$(mktemp)"
rm $Easy3DLauncher
mkfifo $Easy3DLauncher
# Kanal wird etabliert:
exec 3<> $Easy3DLauncher
# Yad wird gestartet:
yad --notification --command='./shortcuts-dialog.sh' --listen <&3 &
# Menü wird definiert:
>&3 echo "menu:\
Shortcuts ...!./shortcuts-dialog.sh|\
Workspace ...!./workspace-dialog.sh|\
Documentation ...!./help-dialog.sh|\
Settings ...!./config-dialog.sh|\
About ...!./about-dialog.sh|\
------------------------------!continue|\
Exit ...!pkill yad!system-shutdown-symbolic \ \
"
# Tooltip wird definiert:
>&3 echo "TOOLTIP:Easy3DLauncher - This tool allows you to execute some commands with using the mouse."
# Icon wird definiert:
>&3 echo "icon:/usr/share/icons/easy3dlauncher/easy3dlauncher.png"
