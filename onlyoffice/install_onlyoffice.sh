#!/bin/bash

# onlyoffice dependencies
sudo apt install libgconf-2-4 fonts-dejavu ttf-dejavu fonts-opensymbol fonts-crosextra-carlito fonts-dejavu-extra gconf2-common gconf-service ttf-dejavu-extra ttf-dejavu-core gconf-service-backend

wget https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors_amd64.deb

sudo dpkg -i onlyoffice-desktopeditors_amd64.deb

