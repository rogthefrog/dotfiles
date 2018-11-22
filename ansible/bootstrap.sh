#!/bin/bash
# bootstrap your Fedora desktop

sudo dnf update -y

sudo dnf install -y \
    dnf-plugins-core \
    git \
    libselinux-python \
    libselinux-python3 \
    python3 \
    python3-dnf


rm -rf ./venv

python3 -m venv ./venv

. ./venv/bin/activate

pip3 install --upgrade pip

pip3 install ansible

echo "Now activate the virtual env and run ansible playbooks."
