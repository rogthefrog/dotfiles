#!/bin/bash
# WSL2 Ubuntu image comes with Python 3.6
# QMK and other things needs 3.7+
# this script installs and sets up newer Python as default

sudo add-apt-repository -y 'ppa:deadsnakes/ppa'
sudo apt update
sudo apt install -y python3.7 python3-venv
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 1
sudo apt remove python3-apt
sudo apt install python3-apt
