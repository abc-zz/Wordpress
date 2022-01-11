FROM  ssurge/wordpress:5.6-fpm-apache2

RUN set -ex

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT  /entrypoint.sh
