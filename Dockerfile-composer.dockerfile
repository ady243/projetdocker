FROM alpine:latest

RUN apk update && \
    apk add --no-cache curl php php-json php-phar php-openssl && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

CMD ["/usr/local/bin/composer"]
