#!/bin/bash

set -x

wget https://gist.githubusercontent.com/chabad360/abc4d0d60a4ed177c37fd5b68dca9887/raw/add-argos -O /usr/bin/add-argos
chmod 655 /usr/bin/add-argos

wget https://gist.githubusercontent.com/chabad360/abc4d0d60a4ed177c37fd5b68dca9887/raw/argos.desktop -O /usr/share/applications/argos.desktop

sleep 5s

xdg-mime default argos.desktop x-scheme-handler/bitbar

set +x