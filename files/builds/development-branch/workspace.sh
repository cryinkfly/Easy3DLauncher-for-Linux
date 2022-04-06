#!/bin/bash

####################################################################################################
# Name:         Easy3DLauncher for Linux - Workspace Dialog (Linux)                                #
# Description:  With this program you can execute your favourite commands with the mouse on Linux. #
# Author:       Steve Zabka                                                                        #
# Author URI:   https://cryinkfly.com                                                              #
# License:      MIT                                                                                #
# Copyright (c) 2022                                                                               #
# Time/Date:    10:00/06.04.2022                                                                   #
# Version:      0.0.2                                                                              #
####################################################################################################

# Path: /$HOME/.config/Easy3DLauncher/bin/workspace.sh

###############################################################################################################################################################
# ALL LOG-FUNCTIONS ARE ARRANGED HERE:                                                                                                                        #
###############################################################################################################################################################


answer=$(TK_THEME="easy3dlauncher" \
yad \
--checklist \
--list \
--column=Select \
--column=Software \
false "Autodesk Fusion 360" \
false "FreeCAD" \
--title="Easy3DLauncher - Workspace" \
--undecorated \
--center \
--button="Cancel:1"  \
--button="Ok:0" )

ret=$?

# Responses to above button presses are below:

if [[ $ret -eq 1 ]]; then
    echo "Settings"
    . settings.sh
elif [[ $answer = "TRUE|Autodesk Fusion 360|" ]]; then
    sed -i '17s/.*/Workspace=1/' /$HOME/.config/Easy3DLauncher/profiles/profile.config
elif [[ $answer = "TRUE|FreeCAD|" ]]; then
    sed -i '17s/.*/Workspace=2/' /$HOME/.config/Easy3DLauncher/profiles/profile.config
else 
    sed -i '17s/.*/Workspace=0/' /$HOME/.config/Easy3DLauncher/profiles/profile.config
fi
