#!/bin/bash
# bootstrap your Fedora desktop

sudo dnf update -y

sudo dnf install -y python3 python3-dnf dnf-plugins-core

rm -rf ./venv

python3 -m venv ./venv

. ./venv/bin/activate

pip3 install --upgrade pip

pip3 install ansible

echo "Now activate the virtual env and run ansible playbooks."
