#!/bin/bash

sleep 1s

echo -n "Downloading"
wget https://raw.githubusercontent.com/chabad360/argos-installer/master/add-argos -O /usr/bin/add-argos
echo -n "."
chmod 755 /usr/bin/add-argos

echo -n "."
wget https://raw.githubusercontent.com/chabad360/argos-installer/master/argos.desktop -O /usr/share/applications/argos.desktop
echo "."
chmod 644 /usr/share/applications/argos.desktop

sleep 5s

echo "Installing"
xdg-mime default argos.desktop x-scheme-handler/bitbar

sleep 2s

echo "Done!"
