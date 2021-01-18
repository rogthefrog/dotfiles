#!/bin/bash
# ulauncher .deb doesn't install its dependencies

wget https://github.com/Ulauncher/Ulauncher/releases/download/5.9.0/ulauncher_5.9.0_all.deb

sudo apt install python3-pyinotify libkeybinder-3.0-0 gir1.2-keybinder-3.0 gir1.2-appindicator3-0.1 python3-distutils-extra python3-levenshtein python3-websocket intltool automake autoconf autotools-dev m4 libsigsegv2

sudo dpkg -i ulauncher_5.9.0_all.deb
