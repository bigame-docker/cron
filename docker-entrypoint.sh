#!/bin/bash

chown -R root /etc/cron.d
chmod -R 644 /etc/cron.d

[ -e /etc/cron.d/*.sh ] && chmod a+x /etc/cron.d/*.sh

exec "$@"