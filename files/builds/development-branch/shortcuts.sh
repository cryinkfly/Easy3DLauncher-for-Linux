#!/bin/bash

####################################################################################################
# Name:         Easy3DLauncher for Linux - Shortcuts Dialog (Linux)                                #
# Description:  With this program you can execute your favourite commands with the mouse on Linux. #
# Author:       Steve Zabka                                                                        #
# Author URI:   https://cryinkfly.com                                                              #
# License:      MIT                                                                                #
# Copyright (c) 2022                                                                               #
# Time/Date:    11:00/16.04.2022                                                                   #
# Version:      0.1.1                                                                              #
####################################################################################################

# Path: /$HOME/.config/Easy3DLauncher/bin/shortcuts.sh

###############################################################################################################################################################
# ALL LOG-FUNCTIONS ARE ARRANGED HERE:                                                                                                                        #
###############################################################################################################################################################

# Check the current workspace
function check_workspace {
current_workspace=`cat $HOME/.config/Easy3DLauncher/profiles/profile.config | awk 'NR == 17'`
}

###############################################################################################################################################################

# Load the configuration data
function sync_workspace {
if [[ $current_workspace = "Workspace=0" ]]; then
    load_workspace=`cat $HOME/.config/Easy3DLauncher/profiles/profile.config | awk 'NR == 27'`
elif [[ $current_workspace = "Workspace=1" ]]; then
    load_workspace=`cat $HOME/.config/Easy3DLauncher/profiles/profile.config | awk 'NR == 31'`
elif [[ $current_workspace = "Workspace=2" ]]; then
    load_workspace=`cat $HOME/.config/Easy3DLauncher/profiles/profile.config | awk 'NR == 35'`
else
    load_workspace=`cat $HOME/.config/Easy3DLauncher/profiles/profile.config | awk 'NR == 27'`
fi

# Here the buttons get their names from the functions:
btn1_name=`cat $load_workspace | awk 'NR == 17'`
btn2_name=`cat $load_workspace | awk 'NR == 21'`
btn3_name=`cat $load_workspace | awk 'NR == 25'`
btn4_name=`cat $load_workspace | awk 'NR == 29'`
btn5_name=`cat $load_workspace | awk 'NR == 33'`
btn6_name=`cat $load_workspace | awk 'NR == 37'`
btn7_name=`cat $load_workspace | awk 'NR == 41'`
btn8_name=`cat $load_workspace | awk 'NR == 45'`
btn9_name=`cat $load_workspace | awk 'NR == 49'`
btn10_name=`cat $load_workspace | awk 'NR == 53'`
btn11_name=`cat $load_workspace | awk 'NR == 57'`
btn12_name=`cat $load_workspace | awk 'NR == 61'`
}

check_workspace
sync_workspace

###############################################################################################################################################################

# Here the buttons get the functions:

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
--field="$btn1_name"!!'Here you get a description about this function!':BTN "bash -c on_click1" \
--field="$btn2_name"!!'Here you get a description about this function!':BTN "bash -c on_click2" \
--field="$btn3_name"!!'Here you get a description about this function!':BTN "bash -c on_click3" \
--field="$btn4_name"!!'Here you get a description about this function!':BTN "bash -c on_click4" \
--field="$btn5_name"!!'Here you get a description about this function!':BTN "bash -c on_click5" \
--field="$btn6_name"!!'Here you get a description about this function!':BTN "bash -c on_click6" \
--field="$btn7_name"!!'Here you get a description about this function!':BTN "bash -c on_click7" \
--field="$btn8_name"!!'Here you get a description about this function!':BTN "bash -c on_click8" \
--field="$btn9_name"!!'Here you get a description about this function!':BTN "bash -c on_click9" \
--field="$btn10_name"!!'Here you get a description about this function!':BTN "bash -c on_click10" \
--field="$btn11_name"!!'Here you get a description about this function!':BTN "bash -c on_click11" \
--field="$btn12_name"!!'Here you get a description about this function!':BTN "bash -c on_click12" \
--button="Settings:1"  \
--button="Close:99"

ret=$?

# Responses to above button presses are below:

if [[ $ret -eq 1 ]]; then
    echo "Settings"
    . settings.sh
fi
