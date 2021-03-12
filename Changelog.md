## 0.9.1 (release date: 12.03.2021)

 * Added phpdbg

## 0.9.0 (release date: 03.12.2020)

 * Removed unsupported PHP versions 5.6, 7.0 and 7.1
 * Make PHP 8.0 default version

## 0.8.0 (release date: 10.11.2020)

 * Added PHP 8.0
 * Removed MongoDB PHP extension and clients

## 0.7.0 (release date: 25.10.2020)

 * Updated `composer` to `2.0`
 * Removed global package `hirak/prestissimo` incompatible with new Composer

## 0.6.2 (release date: 04.12.2019)

 * Finally fixed installation of `php-sodium` which is not needed any more for PHP 7.2 an newer
 * Extension `php-sodium` now installs from PHP 7.0 and higher
 * Fixed `dist-upgrade` during image build

## 0.6.1 (release date: 2019-08-16)

 * Fixed installation of `php-sodium` which resulted in installation of PHP 7.1 under 5.6 image
 * Extension `php-sodium` now installs only from PHP 7.1 and higher

## 0.6.0 (release date: 2019-08-15)

 * Updated baseimage to `ubuntu:18.04`
 * Removed `nette/code-checker`
 * Updated nodejs to `10.x`
 * Added PHP 7.4
 * Removed Bower
 * Added Gulp
 * Removed `deb-src` apt repositories

## 0.5.0 (release date: 2019-04-23)

 * Added PHP 7.3

## 0.4.2 (release date: 2018-10-10)

 * Set Composer ENV `COMPOSER_ALLOW_SUPERUSER` to `1` by default

## 0.4.1 (release date: 2018-09-09)

 * Added extension gmp

## 0.4.0 (release date: 2018-04-12)

 * Added PHP 7.2

## 0.3.1 (release date: 2017-08-29)

 * Added php-parallel-lint
 * Added code-checker

## 0.3.0 (release date: 2017-03-28)

 * Improved caching using `/cache` dir, which is set as volume on GitLab CI
 * Set NPM cache dir to `/cache/npm`
 * Set Bower cache dir to `/cache/bower`
 * Set Composer cache dir to `/cache/composer`
 * Set Composer ENV `COMPOSER_NO_INTERACTION` to `1` by default
 * Added `~/.composer/vendor/bin` to global `$PATH`

## 0.2.0 (release date: 2017-03-27)

 * Fixed PHP 7.1 build, where 7.0 packages was used

## 0.1.2 (release date: 2017-03-08)

 * Added `git`

## 0.1.1 (release date: 2017-03-08)

 * Added `npm`
 * Added `grunt` and `bower`

## 0.1.0 (release date: 2017-03-06)

 * Initial release
