FROM alpine:edge


RUN apk add --update \
  ca-certificates \
  curl \
  php-cli \
  php-ctype \
  php-curl \
  php-gd \
  php-iconv \
  php-intl \
  php-json \
  php-mcrypt \
  php-memcache \
  php-phar \
  php-xml \
  php-zip \
  php-zlib \
  php-pcntl \
  php-posix && \
  rm -rf /var/cache/apk/*

RUN wget https://github.com/borisrepl/boris/archive/master.zip && \
    unzip master.zip && \
    rm master.zip && \
    mv boris-master/ /boris/

CMD ["php","/boris/bin/boris"]