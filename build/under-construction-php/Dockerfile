# Overlay of google-ctf 2023/quals/web-under-construction-php/challenge/Dockerfile (vendored unchanged in app/).
# What differs from upstream:
# - the COPY sources point into app/challenge/ (this folder is the build context);
# - the environment upstream sets in challenge.yaml (Kubernetes env and secret, the flag included)
#   is baked in with ENV: the same values, since Isoloom has no per-machine environment.
# Everything else is upstream's, line for line.

FROM php:8.2-apache

RUN apt-get update && \
    docker-php-ext-install mysqli pdo pdo_mysql \
    && apt-get install -y netcat-traditional \
    && rm -rf /var/lib/apt/lists/*

RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
COPY app/challenge/ports.conf /etc/apache2/
COPY app/challenge/src/ /var/www/html

VOLUME /var/run

ENV MYSQL_DATABASE=forge \
    DB_HOST=under-construction-mysql \
    MIGRATOR_TOKEN=Yw4Ynl59Deu37r1zyCWbHYlRU14QXl2bcobHyHGY \
    MYSQL_PASSWORD=Ah9LUPhPEknU7jceKW4ya9Hwek4GrpLmzYFCgnL1lYg \
    FLAG=CTF{ff79e2741f21abd77dc48f17bab64c3d}
