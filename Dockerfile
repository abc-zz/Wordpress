FROM  ssurge/wordpress:5.6-fpm-apache2

RUN set -ex\
    && apt update -y --allow-releaseinfo-change \
    && apt upgrade -y \
    && apt install -y unzip qrencode nano net-tools\
    && apt autoremove -y

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

CMD echo "Hello world"
