NAME = sunfoxcz/php-build
VERSION = 0.9.0

.PHONY: all php72 php73 php74 php80 release

all: php72 php73 php74 php80

php72:
	docker build -t $(NAME):7.2 --rm -f Dockerfile-7.2 .

php73:
	docker build -t $(NAME):7.3 --rm -f Dockerfile-7.3 .

php74:
	docker build -t $(NAME):7.4 --rm -f Dockerfile-7.4 .

php80:
	docker build -t $(NAME):8.0 --rm -f Dockerfile-8.0 .
