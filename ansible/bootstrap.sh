#!/bin/bash
# bootstrap your Ubuntu VM
if [ "`whoami`" != "root" ]; then
  echo "Must run as root: sudo $0"
  exit 1
fi
apt install -y ansible \
               git \
               python3 \
               python3-dev \
               python-pip

pip install --upgrade pip

pip install virtualenv
