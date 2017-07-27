#!/bin/bash

set -e

for item in /etc/cron.d
do
  if [ -f $item ]; then
    chown root $item;
    chmod 644 $item;
  fi
done

chown root /etc/cron.d/*
chmod 644 /etc/cron.d/*

find /etc/cron.d/ -name "*.sh" -exec chmod +x {} \;

exec "$@"