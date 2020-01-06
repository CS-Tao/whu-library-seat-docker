#!/bin/bash
set -e

cd ~/recorder

[ -e routes/mysql.conf.js ] && rm routes/mysql.conf.js

config=$(cat /mysql.conf.js);
config="${config//\{DATABASE_HOST\}/$DATABASE_HOST}";
printf '%s\n' "$config" >routes/mysql.conf.js

exec "$@"
