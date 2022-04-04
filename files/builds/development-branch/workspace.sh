#!/bin/bash

####################################################################################################
# Name:         Easy3DLauncher for Linux - Workspace Dialog (Linux)                                #
# Description:  With this program you can execute your favourite commands with the mouse on Linux. #
# Author:       Steve Zabka                                                                        #
# Author URI:   https://cryinkfly.com                                                              #
# License:      MIT                                                                                #
# Copyright (c) 2022                                                                               #
# Time/Date:    19:15/04.04.2022                                                                   #
# Version:      0.0.1                                                                              #
####################################################################################################

# Path: /$HOME/.config/Easy3DLauncher/bin/workspace.sh

###############################################################################################################################################################
# ALL LOG-FUNCTIONS ARE ARRANGED HERE:                                                                                                                        #
###############################################################################################################################################################


TK_THEME="easy3dlauncher" \
yad \
--checklist \
--list \
--column=Select \
--column=Software \
false "Autodesk Fusion 360" \
false "FreeCAD" \
--title="Easy3DLauncher - Profiles" \
--undecorated \
--center \
--button="Cancel:1"  \
--button="Ok:0" 

ret=$?

# Responses to above button presses are below:

if [[ $ret -eq 1 ]]; then
    echo "Settings"
    . settings.sh
fi
