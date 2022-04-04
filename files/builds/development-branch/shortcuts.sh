#!/bin/bash

####################################################################################################
# Name:         Easy3DLauncher for Linux - Shortcuts Dialog (Linux)                                #
# Description:  With this program you can execute your favourite commands with the mouse on Linux. #
# Author:       Steve Zabka                                                                        #
# Author URI:   https://cryinkfly.com                                                              #
# License:      MIT                                                                                #
# Copyright (c) 2022                                                                               #
# Time/Date:    19:00/04.04.2022                                                                   #
# Version:      0.0.7                                                                              #
####################################################################################################

# Path: /$HOME/.config/Easy3DLauncher/bin/shortcuts.sh

###############################################################################################################################################################
# ALL LOG-FUNCTIONS ARE ARRANGED HERE:                                                                                                                        #
###############################################################################################################################################################

function on_click1 () {
echo "clicked 1"
button1=`cat $HOME/.config/Easy3DLauncher/profiles/shortcuts.config | awk 'NR == 18'`
bash -c "$button1"
}

function on_click2 () {
echo "clicked 2"
button2=`cat $HOME/.config/Easy3DLauncher/profiles/shortcuts.config | awk 'NR == 22'`
bash -c "$button2"
}

function on_click3 () {
echo "clicked 3"
button3=`cat $HOME/.config/Easy3DLauncher/profiles/shortcuts.config | awk 'NR == 26'`
bash -c "$button3"
}

function on_click4 () {
echo "clicked 4"
button4=`cat $HOME/.config/Easy3DLauncher/profiles/shortcuts.config | awk 'NR == 30'`
bash -c "$button4"
}

function on_click5 () {
echo "clicked 5"
button5=`cat $HOME/.config/Easy3DLauncher/profiles/shortcuts.config | awk 'NR == 34'`
bash -c "$button5"
}

function on_click6 () {
echo "clicked 6"
button6=`cat $HOME/.config/Easy3DLauncher/profiles/shortcuts.config | awk 'NR == 38'`
bash -c "$button6"
}

function on_click7 () {
echo "clicked 7"
button7=`cat $HOME/.config/Easy3DLauncher/profiles/shortcuts.config | awk 'NR == 42'`
bash -c "$button7"
}

function on_click8 () {
echo "clicked 8"
button8=`cat $HOME/.config/Easy3DLauncher/profiles/shortcuts.config | awk 'NR == 46'`
bash -c "$button8"
}

function on_click9 () {
echo "clicked 9"
button9=`cat $HOME/.config/Easy3DLauncher/profiles/shortcuts.config | awk 'NR == 50'`
bash -c "$button9"
}

function on_click10 () {
echo "clicked 10"
button10=`cat $HOME/.config/Easy3DLauncher/profiles/shortcuts.config | awk 'NR == 54'`
bash -c "$button10"
}

function on_click11 () {
echo "clicked 11"
button11=`cat $HOME/.config/Easy3DLauncher/profiles/shortcuts.config | awk 'NR == 58'`
bash -c "$button11"
}

function on_click12 () {
echo "clicked 12"
button12=`cat $HOME/.config/Easy3DLauncher/profiles/shortcuts.config | awk 'NR == 62'`
bash -c "$button12"
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
