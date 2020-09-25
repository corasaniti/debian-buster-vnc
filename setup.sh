#!/bin/bash

# Start vnc
if [ -z "$VNC_PASSWORD" ]
then
    echo '[-] Please choose a password with VNC_PASSWORD parameter'
    exit -1
fi

if [ ! -f /root/.vnc/passwd ]
then
    mkdir /root/.vnc
    x11vnc -storepasswd $VNC_PASSWORD /root/.vnc/passwd
fi

Xvfb -screen 0 1024x768x16 -ac &
sleep 15
env DISPLAY=:0.0 x11vnc -noxrecord -noxfixes -noxdamage -forever -display :0 &
env DISPLAY=:0.0 fluxbox 

if [ -f /app.sh ]
then
    /app.sh
fi
