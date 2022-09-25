NAME = sunfoxcz/php-build
VERSION = 2.0.0

.PHONY: all release

all: build

build: 7.4 8.0 8.1 8.2

7.4:
	docker build -t $(NAME):7.4 --rm -f Dockerfile-7.4 .

8.0:
	docker build -t $(NAME):8.0 --rm -f Dockerfile-8.0 .

8.1:
	docker build -t $(NAME):8.1 --rm -f Dockerfile-8.1 .

8.2:
	docker build -t $(NAME):8.2 --rm -f Dockerfile-8.2 .

release:
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F '7.4'; then echo "$(NAME):7.4 is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F '8.0'; then echo "$(NAME):8.0 is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F '8.1'; then echo "$(NAME):8.1 is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F '8.2'; then echo "$(NAME):8.2 is not yet built. Please run 'make build'"; false; fi
	docker push $(NAME):7.4
	docker push $(NAME):8.0
	docker push $(NAME):8.1
	docker push $(NAME):8.2
