#!/bin/bash
set -e
source /build/buildconfig
set -x

## Often used tools.
$minimal_apt_get_install curl unzip gnupg git mysql-client postgresql-client redis-tools

## PPA Ondrej
LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php

## NPM apt repository
curl -fsSL https://deb.nodesource.com/setup_16.x | bash -

apt-get update

$minimal_apt_get_install \
	php$1-bcmath \
	php$1-bz2 \
	php$1-cli \
	php$1-curl \
	php$1-gd \
	php$1-gmp \
	php$1-imap \
	php$1-intl \
	php$1-mbstring \
	php$1-mysql \
	php$1-opcache \
	php$1-pgsql \
	php$1-phpdbg \
	php$1-readline \
	php$1-soap \
	php$1-sqlite3 \
	php$1-xml \
	php$1-zip \
	nodejs

PHP_VER=`echo $1 | sed -e 's/\.//g'`
if [ "$PHP_VER" -lt "80" ]; then
	$minimal_apt_get_install php$1-json
fi
if [ "$PHP_VER" -lt "81" ]; then
	$minimal_apt_get_install php$1-redis
fi

# Grunt and Gulp
npm install -g grunt gulp

# Composer
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

mkdir /cache

# NPM: cache
npm config set cache /cache/npm

# Composer global packages
composer global require jakub-onderka/php-parallel-lint:@stable
