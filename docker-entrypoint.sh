#!/bin/bash

set -e

for item in /etc/cron.d
do
  if [ -f $item ]; then
    chown root $item;
    chmod 644 $item;
  fi
done

find /etc/cron.d/ -name "*.sh" -exec chmod +x {} \;

exec "$@"