#! /bin/bash

####################################################################################################
# Name:         Easy3DLauncher for Linux - Launcher (Linux)                                        #
# Description:  With this program you can execute some commands with the mouse on Linux.           #
# Author:       Steve Zabka                                                                        #
# Author URI:   https://cryinkfly.com                                                              #
# License:      MIT                                                                                #
# Copyright (c) 2022                                                                               #
# Time/Date:    11:00/26.03.2022                                                                   #
# Version:      0.0.1                                                                              #
####################################################################################################

# Path: /$HOME/.config/fusion-360/bin/install.sh

###############################################################################################################################################################
# ALL LOG-FUNCTIONS ARE ARRANGED HERE:                                                                                                                        #
###############################################################################################################################################################

function on_click () {
echo "clicked"
}

###############################################################################################################################################################
# THE INITIALIZATION OF THE FUNCTIONS STARTS HERE:                                                                                                                            #
###############################################################################################################################################################

export -f on_click

###############################################################################################################################################################
# The DIALOG STARTS HERE:                                                                                                                              #
###############################################################################################################################################################

GTK_THEME="easy3dlauncher-dialog" \
yad \
--title="Easy3DLauncher" \
--form \
--undecorated \
--center \
--columns=3 \
--buttons-layout=center \
--field="Click Down 1":BTN "bash -c on_click" \
--field="Click Down 2":BTN "bash -c on_click" \
--field="Click Down 3":BTN "bash -c on_click" \
--field="Click Down 4":BTN "bash -c on_click" \
--field="Click Down 5":BTN "bash -c on_click" \
--field="Click Down 6":BTN "bash -c on_click" \
--field="Click Down 7":BTN "bash -c on_click" \
--field="Click Down 8":BTN "bash -c on_click" \
--field="Click Down 9":BTN "bash -c on_click" \
--field="Click Down 10":BTN "bash -c on_click" \
--field="Click Down 11":BTN "bash -c on_click" \
--field="Click Down 12":BTN "bash -c on_click" \
--button="About:2" \
--button="Settings:1"  \
--button="Close:99"

ret=$?

# Responses to above button presses are below:

if [[ $ret -eq 1 ]]; then
    echo "Hello World 1"
   . test.sh
fi

if [[ $ret -eq 2 ]]; then
    echo "Hello World 2"
    . test.sh
fi
