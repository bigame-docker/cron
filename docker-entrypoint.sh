#!/bin/bash

chown -R root /etc/cron.d
chmod -R 644 /etc/cron.d

exec "$@"