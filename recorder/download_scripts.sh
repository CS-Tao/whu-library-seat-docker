#!/bin/bash
set -e

apt-get update
apt-get install -y --no-install-recommends ca-certificates git
cd ~
git clone ${SEAT_RECORDER_URL} -b ${SEAT_RECORDER_BRANCH} ~/recorder
cd ~/recorder
cp /mysql.conf.js routes/mysql.conf.js
ls -a -l
npm install
apt-get purge -y --auto-remove ca-certificates git
rm -rf /var/lib/apt/lists/*

echo "Scripts downloaded"
