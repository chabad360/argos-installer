#!/bin/bash

wget https://gist.githubusercontent.com/chabad360/abc4d0d60a4ed177c37fd5b68dca9887/raw/add-argos.sh -O /usr/bin/add-argos
chmod 655 /usr/bin/add-argos

wget https://gist.githubusercontent.com/chabad360/abc4d0d60a4ed177c37fd5b68dca9887/raw/bitbar.desktop -O /usr/share/applications/argos.desktop

xdg-mime default argos.desktop x-scheme-handler/bitbar
xdg-mime default argos.desktop x-scheme-handler/argos
