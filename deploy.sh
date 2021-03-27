#!/bin/bash
if [ ! $(ls -A /var/www/html/config) ]; then
    cd /tmp
    unzip matomo-${MATOMO_VERSION}.zip
    mv -f matomo/config/* /var/www/html/config/
fi
if [ ! $(ls -A /var/www/html/plugins) ]; then
    cd /tmp
    unzip -o matomo-${MATOMO_VERSION}.zip
    mv -f matomo/plugins/* /var/www/html/plugins/
fi
