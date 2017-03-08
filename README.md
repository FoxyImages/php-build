# Docker image for running PHP on CI

* Based on [phusion/baseimage-docker](https://github.com/phusion/baseimage-docker) (but thrown away everything what is not needed for CI)
* PHP installed from [Ondrej Sury's Ubuntu PPA](https://launchpad.net/~ondrej/+archive/ubuntu/php) which contains almost any posiible package

## APT packages added

* curl
* unzip
* git
* mysql-client
* postgresql-client
* redis-tools
* mongodb-clients
* nodejs
* nodejs-legacy
* npm

## PHP packages installed

* bcmath
* bz2
* cli
* curl
* gd
* imap
* intl
* json
* mbstring
* mcrypt
* mysql
* opcache
* pgsql
* readline
* soap
* sqlite3
* xml
* zip
* mongodb
* redis

## NPM packages globally installed

* grunt
* bower

## Composer packages globally installed

* [composer](https://getcomposer.org/) (of course)
* [hirak/prestissimo](https://github.com/hirak/prestissimo) which speeds up composer install

## Tags (and PHP version) available for Docker

* 5.6
* 7.0
* 7.1
