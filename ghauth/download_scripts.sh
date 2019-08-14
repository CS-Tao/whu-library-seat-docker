#!/bin/bash
set -e

apt-get update
apt-get install -y --no-install-recommends ca-certificates git
cd ~
git clone ${SEAT_GHAUTH_URL} -b ${SEAT_GHAUTH_BRANCH} ~/ghauth
cd ~/ghauth
ls -a -l
npm install
apt-get purge -y --auto-remove ca-certificates git
rm -rf /var/lib/apt/lists/*

echo "Scripts downloaded"
