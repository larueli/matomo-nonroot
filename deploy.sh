#!/bin/bash

cd /tmp
unzip -o matomo-${MATOMO_VERSION}.zip
rsync -a matomo/plugins/ /var/www/html/plugins/

if [ ! "$(ls -A /var/www/html/config)" ]; then
    mv -f matomo/config/* /var/www/html/config/
fi
