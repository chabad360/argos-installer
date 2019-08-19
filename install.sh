#!/bin/bash

set -x

wget https://raw.githubusercontent.com/chabad360/argos-installer/master/add-argos -O /usr/bin/add-argos
chmod 655 /usr/bin/add-argos

wget https://raw.githubusercontent.com/chabad360/argos-installer/master/argos.desktop -O /usr/share/applications/argos.desktop

sleep 5s

xdg-mime default argos.desktop x-scheme-handler/bitbar

set +x