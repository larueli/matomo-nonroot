#!/bin/bash
if [ ! -f /var/www/html/config/global.php ]; then
    cd /tmp
    unzip matomo-${MATOMO_VERSION}.zip
    mv -f matomo/* /var/www/html/
fi
