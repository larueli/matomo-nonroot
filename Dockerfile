FROM larueli/php-base-image:8.0

ARG MATOMO_VERSION=4.6.1
ENV MATOMO_VERSION=${MATOMO_VERSION}

USER 0
COPY deploy.sh /docker-entrypoint-init.d/
RUN cd /tmp && wget https://builds.matomo.org/matomo-${MATOMO_VERSION}.zip && unzip matomo-${MATOMO_VERSION}.zip && \
    rm -rf /var/www/html && mv matomo /var/www/html && \
    chgrp -R 0 /var/www/html && chmod -R g+rwx /var/www/html

USER 545622:0