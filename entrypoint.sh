#!/bin/bash


cd /root 
wget http://ftp.us.debian.org/debian/pool/non-free/liba/libapache-mod-fastcgi/libapache2-mod-fastcgi_2.4.7~0910052141-1.1+deb8u1_amd64.deb 
dpkg -i libapache2-mod-fastcgi_2.4.7~0910052141-1.1+deb8u1_amd64.deb 

sed -i '$a ServerName 172.0.0.2:80' /etc/apache2/apache2.conf 
service apache2 restart 

a2enmod actions fastcgi 
a2enmod rewrite 
touch /usr/lib/cgi-bin/php7-fcgi
chown -R www-data:www-data /usr/lib/cgi-bin



service apache2 start
