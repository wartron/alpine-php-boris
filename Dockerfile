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
  php-openssl \
  php-phar \
  php-xml \
  php-zip \
  php-zlib \
  php-pcntl \
  php-posix && \
  rm -rf /var/cache/apk/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

RUN wget https://github.com/alexpw/boris/archive/master.zip && \
    unzip master.zip && \
    rm master.zip && \
    mv boris-master/ /boris/ && \
    cd /boris && \
    composer install --prefer-dist

CMD ["php","/boris/bin/boris"]