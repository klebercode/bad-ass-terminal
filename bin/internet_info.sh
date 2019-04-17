#!/bin/bash

IP=$(ipconfig getifaddr en0)
PUB_IP=$(dig whoami.akamai.net. @ns1-1.akamaitech.net. +short)
# PUB_IP=$(dig -4 TXT +short o-o.myaddr.l.google.com @ns1.google.com)
# PUB_IP=$(dig +short myip.opendns.com @resolver1.opendns.com)

INTERNET=''

internet_info=`airport -I | grep agrCtlRSSI | awk '{print $2}' | sed 's/-//g'`

if [[ $internet_info -lt 20 ]]; then
    echo -n '#[fg=colour116]'
elif [[ $internet_info -lt 30 ]]; then
    echo -n '#[fg=colour117]'
elif [[ $internet_info -lt 40 ]]; then
    echo -n '#[fg=colour118]'
elif [[ $internet_info -lt 50 ]]; then
    echo -n '#[fg=colour119]'
else
    echo -n '#[fg=colour120]'
fi

# echo -n "$INTERNET -[$internet_info]db #[fg=colour141]$IP #[fg=colour240]| #[fg=colour141]$PUB_IP"
# dracula
echo -n "#[fg=colour141]$IP #[fg=colour240]| #[fg=colour141]$PUB_IP"
# solarized light
# echo -n "#[fg=yellow]$IP #[fg=brightcyan]| #[fg=yellow]$PUB_IP"

