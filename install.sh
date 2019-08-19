#!/bin/bash

set -x

sleep 1

wget https://raw.githubusercontent.com/chabad360/argos-installer/master/add-argos -O /usr/bin/add-argos
chmod 755 /usr/bin/add-argos

wget https://raw.githubusercontent.com/chabad360/argos-installer/master/argos.desktop -O /usr/share/applications/argos.desktop
chmod 644 /usr/share/applications/argos.desktop

sleep 5s

xdg-mime default argos.desktop x-scheme-handler/bitbar

set +x