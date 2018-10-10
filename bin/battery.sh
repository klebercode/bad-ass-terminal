#!/bin/bash

HEART='❤'

battery_info=`pmset -g batt`
current_charge=$(echo $battery_info | grep -o '[0-9]\+%' | awk '{sub (/%/, "", $1); print $1}')

if [[ $current_charge -lt 30 ]]; then
    # echo -n '#[fg=colour41]'
    echo -n '#[fg=red]'
elif [[ $current_charge -lt 50 ]]; then
    # echo -n '#[fg=colour42]'
    echo -n '#[fg=magenta]'
elif [[ $current_charge -lt 70 ]]; then
    # echo -n '#[fg=colour43]'
    echo -n '#[fg=brightmagenta]'
elif [[ $current_charge -lt 90 ]]; then
    # echo -n '#[fg=colour44]'
    echo -n '#[fg=blue]'
else
    # echo -n '#[fg=colour45]'
    echo -n '#[fg=green]'
fi

echo -n "$HEART $current_charge%"