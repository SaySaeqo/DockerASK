FROM alpine:latest
EXPOSE 8080
EXPOSE 8081
ARG PORT_ARG=8080
RUN apk update
RUN apk add apache2 --no-cache
RUN mkdir -p /run/apache2
RUN sed -i "s/Listen 80/Listen $PORT_ARG/g" /etc/apache2/httpd.conf
RUN sed -i 's/#ServerName/ServerName/g' /etc/apache2/httpd.conf
RUN apk add --no-cache bash
RUN apk add --no-cache su-exec

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
