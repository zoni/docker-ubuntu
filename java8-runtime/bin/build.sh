#!/bin/sh

set -e
set -x

apt-get update
apt-get dist-upgrade --no-install-recommends --yes
apt-get install --no-install-recommends -y java8-runtime-headless
rm -rf /var/lib/apt/lists/*
