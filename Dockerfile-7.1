FROM ubuntu:18.04
MAINTAINER Tomas Jacik <tomas@jacik.cz>

ADD image /build

# Configure Composer
ENV COMPOSER_CACHE_DIR /cache/composer
ENV COMPOSER_NO_INTERACTION 1
ENV COMPOSER_ALLOW_SUPERUSER 1

# Composer: make global packages available for execution
ENV PATH $PATH:~/.composer/vendor/bin

RUN /build/prepare.sh && \
	/build/system_services.sh && \
	/build/packages.sh 7.1 && \
	/build/cleanup.sh

CMD ["/sbin/my_init"]
