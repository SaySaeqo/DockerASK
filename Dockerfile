FROM alpine:latest
RUN apk update
RUN apk add apache2 --no-cache
RUN mkdir -p /run/apache2
RUN sed -i 's/Listen 80/Listen 1100/g' /etc/apache2/httpd.conf
RUN sed -i 's/#ServerName/ServerName/g' /etc/apache2/httpd.conf

COPY start.sh .
CMD ["/bin/sh", "start.sh"]
