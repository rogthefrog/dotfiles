#!/bin/bash
sudo cp ./*.qss /usr/share/albert/org.albert.frontend.widgetboxmodel/themes/
sudo pkill albert
nohup albert &
