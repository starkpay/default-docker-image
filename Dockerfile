FROM php:fpm

RUN apt-get update -y

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl \
        libmemcached-dev \
        libssl-dev \
        libmcrypt-dev \
        ssh-client

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN curl -o /usr/local/bin/phpcs https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar && chmod +x /usr/local/bin/phpcs

RUN curl -o /usr/local/bin/phpmd https://phpmd.org/static/latest/phpmd.phar && chmod +x /usr/local/bin/phpmd