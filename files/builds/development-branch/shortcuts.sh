#!/bin/bash

####################################################################################################
# Name:         Easy3DLauncher for Linux - Shortcuts Dialog (Linux)                                #
# Description:  With this program you can execute your favourite commands with the mouse on Linux. #
# Author:       Steve Zabka                                                                        #
# Author URI:   https://cryinkfly.com                                                              #
# License:      MIT                                                                                #
# Copyright (c) 2022                                                                               #
# Time/Date:    10:30/14.04.2022                                                                   #
# Version:      0.0.9                                                                              #
####################################################################################################

# Path: /$HOME/.config/Easy3DLauncher/bin/shortcuts.sh

###############################################################################################################################################################
# ALL LOG-FUNCTIONS ARE ARRANGED HERE:                                                                                                                        #
###############################################################################################################################################################

function on_click1 () {
button_clicked=1
. button-clicked.sh
}

function on_click2 () {
button_clicked=2
. button-clicked.sh
}

function on_click3 () {
button_clicked=3
. button-clicked.sh
}

function on_click4 () {
button_clicked=4
. button-clicked.sh
}

function on_click5 () {
button_clicked=5
. button-clicked.sh
}

function on_click6 () {
button_clicked=6
. button-clicked.sh
}

function on_click7 () {
button_clicked=7
. button-clicked.sh
}

function on_click8 () {
button_clicked=8
. button-clicked.sh
}

function on_click9 () {
button_clicked=9
. button-clicked.sh
}

function on_click10 () {
button_clicked=10
. button-clicked.sh
}

function on_click11 () {
button_clicked=11
. button-clicked.sh
}

function on_click12 () {
button_clicked=12
. button-clicked.sh
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

GTK_THEME="easy3dlauncher" \
yad \
--title="Easy3DLauncher" \
--form \
--undecorated \
--center \
--columns=3 \
--buttons-layout=center \
--field="Click Down 1":BTN "bash -c on_click1" \
--field="Click Down 2":BTN "bash -c on_click2" \
--field="Click Down 3":BTN "bash -c on_click3" \
--field="Click Down 4":BTN "bash -c on_click4" \
--field="Click Down 5":BTN "bash -c on_click5" \
--field="Click Down 6":BTN "bash -c on_click6" \
--field="Click Down 7":BTN "bash -c on_click7" \
--field="Click Down 8":BTN "bash -c on_click8" \
--field="Click Down 9":BTN "bash -c on_click9" \
--field="Click Down 10":BTN "bash -c on_click10" \
--field="Click Down 11":BTN "bash -c on_click11" \
--field="Click Down 12":BTN "bash -c on_click12" \
--button="Settings:1"  \
--button="Close:99"

ret=$?

# Responses to above button presses are below:

if [[ $ret -eq 1 ]]; then
    echo "Settings"
    . settings.sh
fi
