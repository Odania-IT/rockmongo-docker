#!/bin/bash
set -e
source /srv/buildconfig
set -x

minimal_apt_get_install build-essential apache2 php5 libapache2-mod-php5 php5-dev php-pear wget unzip

## Install mongo driver
pecl install mongo
touch /etc/php5/conf.d/mongo.ini
echo "extension=mongo.so" >> /etc/php5/conf.d/mongo.ini

# Install Rockmongo
cd /root && wget --no-check-certificate https://github.com/gilacode/rockmongo/archive/master.zip -O rockmongo-master.zip
cd /root && unzip rockmongo-master.zip -d /var/ && rm -fr /var/www && mv /var/rockmongo-master/ /var/www/rockmongo

## Install haproxy runit service.
mkdir /etc/service/apache2
cp /srv/runit/apache2 /etc/service/apache2/run

# Disable ssh
touch /etc/service/sshd/down
