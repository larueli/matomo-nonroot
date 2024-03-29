FROM larueli/php-base-image:8.1

ARG MATOMO_VERSION=4.9.0
ENV MATOMO_VERSION=${MATOMO_VERSION}

USER 0
COPY deploy.sh /docker-entrypoint-init.d/
RUN cd /tmp && wget https://builds.matomo.org/matomo-${MATOMO_VERSION}.zip && unzip matomo-${MATOMO_VERSION}.zip && \
    rm -rf /var/www/html && mv matomo /var/www/html && rm -r * && wget https://builds.matomo.org/matomo-${MATOMO_VERSION}.zip && \
    chgrp -R 0 /var/www/html && chmod -R g+rwx /var/www/html

USER 545622:0
