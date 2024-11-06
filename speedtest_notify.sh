#!/bin/bash

# Environment setup
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus

# Run speed test and capture results
results=$(speedtest-cli --simple)
download=$(echo "$results" | grep 'Download' | awk '{print $2, $3}')
upload=$(echo "$results" | grep 'Upload' | awk '{print $2, $3}')

# Send notification
notify-send "Wi-Fi Speed Test Results" "Download: $download \n Upload: $upload"
