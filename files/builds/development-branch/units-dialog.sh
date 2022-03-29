#! /bin/bash

function unit_millimeters {

value=( $(GTK_THEME="easy3dlauncher-dialog" yad --form --undecorated --center --width=300 --title="Easy3DLauncher - Enter value" --separator=' ' --buttons-layout=center \
        --field="Select a number from the number range (0 to 99999):":NUM '0!0..99999!0.01!2' \
        --button=Skip:1 \
        --button=Apply:0 ) )

if [ $? -eq 0 ]; then
    a="${value[0]}"
    echo $a
fi

}

unit_millimeters
