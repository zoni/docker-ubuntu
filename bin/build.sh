#!/bin/bash

set -e
set -x

echo 'debconf debconf/frontend select noninteractive' | debconf-set-selections
aptinstall="apt-get install --no-install-recommends --yes"

# Remove cached deb archives after package installation
echo 'DPkg::Post-Invoke {"/bin/rm -f /var/cache/apt/archives/*.deb || true";};' > /etc/apt/apt.conf.d/99-no-cache

# Set UTF8 locale
echo LC_ALL="en_US.utf8" >> /etc/environment
locale-gen en_US.UTF-8

apt-get update
apt-get dist-upgrade --no-install-recommends --yes

rm -rf /var/lib/apt/lists/*
ln -s /usr/bin/vi /usr/bin/vim
