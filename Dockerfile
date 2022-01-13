FROM  wordpress:php7.4-fpm

RUN apt update -y --allow-releaseinfo-change \
    && apt upgrade -y \
    && apt install -y wget procps nano net-tools sysv-rc-conf \
    && apt install apache2 -y \
    && apt autoremove -y 

COPY conf/ /conf
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

CMD  /entrypoint.sh
