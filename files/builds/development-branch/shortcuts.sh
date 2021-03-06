#!/bin/bash

####################################################################################################
# Name:         Easy3DLauncher for Linux - Shortcuts Dialog (Linux)                                #
# Description:  With this program you can execute your favourite commands with the mouse on Linux. #
# Author:       Steve Zabka                                                                        #
# Author URI:   https://cryinkfly.com                                                              #
# License:      MIT                                                                                #
# Copyright (c) 2022                                                                               #
# Time/Date:    13:00/16.04.2022                                                                   #
# Version:      0.1.4                                                                              #
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
btn1_label=`cat $load_workspace | awk 'NR == 17'`
btn2_label=`cat $load_workspace | awk 'NR == 22'`
btn3_label=`cat $load_workspace | awk 'NR == 27'`
btn4_label=`cat $load_workspace | awk 'NR == 32'`
btn5_label=`cat $load_workspace | awk 'NR == 37'`
btn6_label=`cat $load_workspace | awk 'NR == 42'`
btn7_label=`cat $load_workspace | awk 'NR == 47'`
btn8_label=`cat $load_workspace | awk 'NR == 52'`
btn9_label=`cat $load_workspace | awk 'NR == 57'`
btn10_label=`cat $load_workspace | awk 'NR == 62'`
btn11_label=`cat $load_workspace | awk 'NR == 67'`
btn12_label=`cat $load_workspace | awk 'NR == 72'`

# Here the buttons get their tooltips from the functions:
btn1_tooltip=`cat $load_workspace | awk 'NR == 18'`
btn2_tooltip=`cat $load_workspace | awk 'NR == 23'`
btn3_tooltip=`cat $load_workspace | awk 'NR == 28'`
btn4_tooltip`cat $load_workspace | awk 'NR == 33'`
btn5_tooltip=`cat $load_workspace | awk 'NR == 38'`
btn6_tooltip=`cat $load_workspace | awk 'NR == 43'`
btn7_tooltip=`cat $load_workspace | awk 'NR == 48'`
btn8_tooltip=`cat $load_workspace | awk 'NR == 53'`
btn9_tooltip=`cat $load_workspace | awk 'NR == 58'`
btn10_tooltip=`cat $load_workspace | awk 'NR == 63'`
btn11_tooltip=`cat $load_workspace | awk 'NR == 68'`
btn12_tooltip=`cat $load_workspace | awk 'NR == 73'`

}

check_workspace
sync_workspace

###############################################################################################################################################################

# Here the buttons get the functions:

function on_click1 () {
btn_clicked=1
. button-clicked.sh
}

function on_click2 () {
btn_clicked=2
. button-clicked.sh
}

function on_click3 () {
btn_clicked=3
. button-clicked.sh
}

function on_click4 () {
btn_clicked=4
. button-clicked.sh
}

function on_click5 () {
btn_clicked=5
. button-clicked.sh
}

function on_click6 () {
btn_clicked=6
. button-clicked.sh
}

function on_click7 () {
btn_clicked=7
. button-clicked.sh
}

function on_click8 () {
btn_clicked=8
. button-clicked.sh
}

function on_click9 () {
btn_clicked=9
. button-clicked.sh
}

function on_click10 () {
btn_clicked=10
. button-clicked.sh
}

function on_click11 () {
btn_clicked=11
. button-clicked.sh
}

function on_click12 () {
btn_clicked=12
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
--field="$btn1_label"!!"$btn1_tooltip":BTN "bash -c on_click1" \
--field="$btn2_label"!!"$btn2_tooltip":BTN "bash -c on_click2" \
--field="$btn3_label"!!"$btn3_tooltip":BTN "bash -c on_click3" \
--field="$btn4_label"!!"$btn4_tooltip":BTN "bash -c on_click4" \
--field="$btn5_label"!!"$btn5_tooltip":BTN "bash -c on_click5" \
--field="$btn6_label"!!"$btn6_tooltip":BTN "bash -c on_click6" \
--field="$btn7_label"!!"$btn7_tooltip":BTN "bash -c on_click7" \
--field="$btn8_label"!!"$btn8_tooltip":BTN "bash -c on_click8" \
--field="$btn9_label"!!"$btn9_tooltip":BTN "bash -c on_click9" \
--field="$btn10_label"!!"$btn10_tooltip":BTN "bash -c on_click10" \
--field="$btn11_label"!!"$btn11_tooltip":BTN "bash -c on_click11" \
--field="$btn12_label"!!"$btn12_tooltip":BTN "bash -c on_click12" \
--button="Settings:1"  \
--button="Close:99"

ret=$?

# Responses to above button presses are below:

if [[ $ret -eq 1 ]]; then
    echo "Settings"
    . settings.sh
fi
