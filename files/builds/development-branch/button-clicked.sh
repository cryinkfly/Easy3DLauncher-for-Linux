#!/bin/bash

####################################################################################################
# Name:         Easy3DLauncher for Linux - Button Configuration (Linux)                            #
# Description:  With this program you can execute some commands with the mouse on Linux.           #
# Author:       Steve Zabka                                                                        #
# Author URI:   https://cryinkfly.com                                                              #
# License:      MIT                                                                                #
# Copyright (c) 2022                                                                               #
# Time/Date:    10:30/14.04.2022                                                                   #
# Version:      0.0.1                                                                              #
####################################################################################################

# Path: /$HOME/.config/Easy3DLauncher/bin/button-clicked.sh

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
button1=`cat $load_workspace | awk 'NR == 18'`
button2=`cat $load_workspace | awk 'NR == 22'`
button3=`cat $load_workspace | awk 'NR == 26'`
button4=`cat $load_workspace | awk 'NR == 30'`
button5=`cat $load_workspace | awk 'NR == 34'`
button6=`cat $load_workspace | awk 'NR == 38'`
button7=`cat $load_workspace | awk 'NR == 42'`
button8=`cat $load_workspace | awk 'NR == 46'`
button9=`cat $load_workspace | awk 'NR == 50'`
button10=`cat $load_workspace | awk 'NR == 54'`
button11=`cat $load_workspace | awk 'NR == 58'`
button12=`cat $load_workspace | awk 'NR == 62'`
}

###############################################################################################################################################################

function select_btn () {
if [[ $button_clicked -eq 1 ]]; then
    click1
elif [[ $button_clicked -eq 2 ]]; then
    click2
elif [[ $button_clicked -eq 3 ]]; then
    click3
elif [[ $button_clicked -eq 4 ]]; then
    click4
elif [[ $button_clicked -eq 5 ]]; then
    click5
elif [[ $button_clicked -eq 6 ]]; then
    click6
elif [[ $button_clicked -eq 7 ]]; then
    click7
elif [[ $button_clicked -eq 8 ]]; then
    click8
elif [[ $button_clicked -eq 9 ]]; then
    click9
elif [[ $button_clicked -eq 10 ]]; then
    click10
elif [[ $button_clicked -eq 11 ]]; then
    click11
elif [[ $button_clicked -eq 12 ]]; then
    click12
fi
}

###############################################################################################################################################################

function click1 () {
bash -c "$button1"
}

function click2 () {
bash -c "$button2"
}

function click3 () {
bash -c "$button3"
}

function click4 () {
bash -c "$button4"
}

function click5 () {
bash -c "$button5"
}

function click6 () {
bash -c "$button6"
}

function click7 () {
bash -c "$button7"
}

function click8 () {
bash -c "$button8"
}

function click9 () {
bash -c "$button9"
}

function click10 () {
bash -c "$button10"
}

function click11 () {
bash -c "$button11"
}

function click12 () {
bash -c "$button12"
}

###############################################################################################################################################################
# THE PROGRAM IS STARTED HERE:                                                                                                                                #
###############################################################################################################################################################

check_workspace
sync_workspace
select_btn
