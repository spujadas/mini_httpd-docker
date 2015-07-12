# Dockerfile for mini-httpd

FROM alpine

RUN apk add --update mini_httpd \
 && rm -rf /var/cache/apk/*

EXPOSE 80

VOLUME /var/www/localhost/htdocs

CMD ["mini_httpd", "-C", "/etc/mini_httpd/mini_httpd.conf", "-D"]
