#!/bin/bash

chown root /etc/cron.d/*
chmod 644 /etc/cron.d/*

find /etc/cron.d/ -name "*.sh" -exec chmod +x {} \;

exec "$@"