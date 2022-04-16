#!/bin/bash

####################################################################################################
# Name:         Easy3DLauncher for Linux - Button Configuration (Linux)                            #
# Description:  With this program you can execute some commands with the mouse on Linux.           #
# Author:       Steve Zabka                                                                        #
# Author URI:   https://cryinkfly.com                                                              #
# License:      MIT                                                                                #
# Copyright (c) 2022                                                                               #
# Time/Date:    12:00/16.04.2022                                                                   #
# Version:      0.0.3                                                                              #
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
btn1_cmd=`cat $load_workspace | awk 'NR == 19'`
btn2_cmd=`cat $load_workspace | awk 'NR == 24'`
btn3_cmd=`cat $load_workspace | awk 'NR == 29'`
btn4_cmd=`cat $load_workspace | awk 'NR == 34'`
btn5_cmd=`cat $load_workspace | awk 'NR == 39'`
btn6_cmd=`cat $load_workspace | awk 'NR == 44'`
btn7_cmd=`cat $load_workspace | awk 'NR == 49'`
btn8_cmd=`cat $load_workspace | awk 'NR == 54'`
btn9_cmd=`cat $load_workspace | awk 'NR == 59'`
btn10_cmd=`cat $load_workspace | awk 'NR == 64'`
btn11_cmd=`cat $load_workspace | awk 'NR == 69'`
btn12_cmd=`cat $load_workspace | awk 'NR == 74'`
}

###############################################################################################################################################################

function select_btn () {
if [[ $btn_clicked -eq 1 ]]; then
    click1
elif [[ $btn_clicked -eq 2 ]]; then
    click2
elif [[ $btn_clicked -eq 3 ]]; then
    click3
elif [[ $btn_clicked -eq 4 ]]; then
    click4
elif [[ $btn_clicked -eq 5 ]]; then
    click5
elif [[ $btn_clicked -eq 6 ]]; then
    click6
elif [[ $btn_clicked -eq 7 ]]; then
    click7
elif [[ $btn_clicked -eq 8 ]]; then
    click8
elif [[ $btn_clicked -eq 9 ]]; then
    click9
elif [[ $btn_clicked -eq 10 ]]; then
    click10
elif [[ $btn_clicked -eq 11 ]]; then
    click11
elif [[ $btn_clicked -eq 12 ]]; then
    click12
fi
}

###############################################################################################################################################################

function click1 () {
bash -c "$btn1_cmd"
}

function click2 () {
bash -c "$btn2_cmd"
}

function click3 () {
bash -c "$btn3_cmd"
}

function click4 () {
bash -c "$btn4_cmd"
}

function click5 () {
bash -c "$btn5_cmd"
}

function click6 () {
bash -c "$btn6_cmd"
}

function click7 () {
bash -c "$btn7_cmd"
}

function click8 () {
bash -c "$btn8_cmd"
}

function click9 () {
bash -c "$btn9_cmd"
}

function click10 () {
bash -c "$btn10_cmd"
}

function click11 () {
bash -c "$btn11_cmd"
}

function click12 () {
bash -c "$btn12_cmd"
}

###############################################################################################################################################################
# THE PROGRAM IS STARTED HERE:                                                                                                                                #
###############################################################################################################################################################

check_workspace
sync_workspace
select_btn
