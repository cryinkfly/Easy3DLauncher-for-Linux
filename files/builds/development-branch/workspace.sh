#!/bin/bash

####################################################################################################
# Name:         Easy3DLauncher for Linux - Workspace Dialog (Linux)                                #
# Description:  With this program you can execute your favourite commands with the mouse on Linux. #
# Author:       Steve Zabka                                                                        #
# Author URI:   https://cryinkfly.com                                                              #
# License:      MIT                                                                                #
# Copyright (c) 2022                                                                               #
# Time/Date:    10:30/16.04.2022                                                                   #
# Version:      0.0.3                                                                              #
####################################################################################################

# Path: /$HOME/.config/Easy3DLauncher/bin/workspace.sh

###############################################################################################################################################################
# ALL LOG-FUNCTIONS ARE ARRANGED HERE:                                                                                                                        #
###############################################################################################################################################################


answer=$(GTK_THEME="easy3dlauncher" \
yad \
--width=350 \
--radiolist \
--list \
--column=Select \
--column=Software \
false "Autodesk Fusion 360" \
false "FreeCAD" \
--title="Easy3DLauncher - Workspace" \
--undecorated \
--center \
--button="Add:1"  \
--button="Edit:2"  \
--button="Delete:3"  \
--button="Save:0" )

ret=$?

# Responses to above button presses are below:


if [[ $ret -eq 1 ]]; then
    echo "Add"
elif [[ $ret -eq 2 ]]; then
    echo "Edit"
elif [[ $ret -eq 3 ]]; then
    echo "Remove"
elif [[ $answer = "TRUE|Autodesk Fusion 360|" ]]; then
    sed -i '17s/.*/Workspace=1/' $HOME/.config/Easy3DLauncher/profiles/profile.config
elif [[ $answer = "TRUE|FreeCAD|" ]]; then
    sed -i '17s/.*/Workspace=2/' $HOME/.config/Easy3DLauncher/profiles/profile.config
else 
    sed -i '17s/.*/Workspace=0/' $HOME/.config/Easy3DLauncher/profiles/profile.config
fi
