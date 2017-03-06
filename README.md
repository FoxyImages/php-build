# A minimal Ubuntu image based on phusion/baseimage with added PHP for CI build

## Inspecting docker-php-build

To look around in the image, run:

    docker run --rm -t -i sunfoxcz/docker-php-build:<VERSION> /sbin/my_init -- bash -l

where `<VERSION>` is [one of the pdocker-php-build version numbers](https://github.com/sunfoxcz/docker-php-build/blob/master/ChangeLog.md).

You don't have to download anything manually. The above command will automatically pull the baseimage-docker image from the Docker registry.
