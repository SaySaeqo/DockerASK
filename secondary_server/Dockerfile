FROM ubuntu:latest
ARG PORT_ARG=8080
RUN apk update
RUN apk add apache2 --no-cache
RUN mkdir -p /run/apache2
RUN sed -i "s/Listen 80/Listen $PORT_ARG/g" /etc/apache2/httpd.conf

#CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
