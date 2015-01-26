#!/bin/bash
set -e
source /srv/buildconfig
set -x

apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
