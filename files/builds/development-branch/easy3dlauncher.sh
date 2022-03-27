#! /bin/bash

####################################################################################################
# Name:         Easy3DLauncher for Linux - Launcher (Linux)                                        #
# Description:  With this program you can execute some commands with the mouse on Linux.           #
# Author:       Steve Zabka                                                                        #
# Author URI:   https://cryinkfly.com                                                              #
# License:      MIT                                                                                #
# Copyright (c) 2022                                                                               #
# Time/Date:    10:15/27.03.2022                                                                   #
# Version:      0.0.2                                                                              #
####################################################################################################

# Path: /$HOME/.config/Easy3DLauncher/bin/easy3dlauncher.sh

###############################################################################################################################################################
# ALL LOG-FUNCTIONS ARE ARRANGED HERE:                                                                                                                        #
###############################################################################################################################################################

function on_click1 () {
echo "clicked 1"
}

function on_click2 () {
echo "clicked 2"
}

function on_click3 () {
echo "clicked 3"
}

function on_click4 () {
echo "clicked 4"
}

function on_click5 () {
echo "clicked 5"
}

function on_click6 () {
echo "clicked 6"
}

function on_click7 () {
echo "clicked 7"
}

function on_click8 () {
echo "clicked 8"
}

function on_click9 () {
echo "clicked 9"
}

function on_click10 () {
echo "clicked 10"
}

function on_click11 () {
echo "clicked 11"
}

function on_click12 () {
echo "clicked 12"
}

###############################################################################################################################################################
# THE INITIALIZATION OF THE FUNCTIONS STARTS HERE:                                                                                                                            #
###############################################################################################################################################################

export -f on_click1
export -f on_click2
export -f on_click3
export -f on_click4
export -f on_click5
export -f on_click6
export -f on_click7
export -f on_click8
export -f on_click9
export -f on_click10
export -f on_click11
export -f on_click12

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
--button="About:1" \
--button="Settings:2"  \
--button="Close:99"

ret=$?

# Responses to above button presses are below:

if [[ $ret -eq 1 ]]; then
    echo "About"
   . easy3dlauncher.sh
   . about.sh
fi

if [[ $ret -eq 2 ]]; then
    echo "Settings"
    . easy3dlauncher.sh
    . settings.sh
fi
