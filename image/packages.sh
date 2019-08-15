#!/bin/bash
set -e
source /build/buildconfig
set -x

## Often used tools.
$minimal_apt_get_install curl unzip gnupg git mysql-client postgresql-client redis-tools mongodb-clients

## PPA Ondrej
LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php

## NPM apt repository
curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
echo 'deb https://deb.nodesource.com/node_10.x bionic main' > /etc/apt/sources.list.d/nodesource.list

apt-get update

## NodeJS
$minimal_apt_get_install nodejs

## PHP packages
$minimal_apt_get_install \
	php$1-bcmath \
	php$1-bz2 \
	php$1-cli \
	php$1-curl \
	php$1-gd \
	php$1-gmp \
	php$1-imap \
	php$1-intl \
	php$1-json \
	php$1-mbstring \
	php$1-mysql \
	php$1-opcache \
	php$1-pgsql \
	php$1-readline \
	php$1-soap \
	php$1-sqlite3 \
	php$1-xml \
	php$1-zip \
	php-mongodb \
	php-redis

PHP_VER=`echo $1 | sed -e 's/\.//g'`
if [ "$PHP_VER" -lt "72" ]; then
	$minimal_apt_get_install php$1-mcrypt php-sodium
fi

# Grunt and Gulp
npm install -g grunt gulp

# Composer
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

mkdir /cache

# NPM: cache
npm config set cache /cache/npm

# Composer speedup
composer global require hirak/prestissimo:@stable
composer global require jakub-onderka/php-parallel-lint:@stable
