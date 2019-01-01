#!/bin/sh
git clone $REPO_URL /usr/share/nginx/html
/etc/init.d/cron start
nginx
tail -f /var/log/mysite.log
