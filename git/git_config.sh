#!/bin/bash
# cache git credentials for an hour
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600'

