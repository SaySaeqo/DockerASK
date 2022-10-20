FROM alpine:latest
RUN apk update
RUN apk add apache2 --no-cache
RUN mkdir -p /run/apache2
RUN sed -i 's/Listen 80/Listen 1100/g' /etc/apache2/httpd.conf
RUN sed -i 's/#ServerName/ServerName/g' /etc/apache2/httpd.conf

COPY start.sh .
CMD ["/bin/sh", "start.sh"]


# UBUNTU VERSION (IF SOMETHING WILL GO WRONG WITH ALPINE)
# FROM ubuntu:latest
# RUN /bin/bash
# RUN apt update
# RUN apt install apache2 -y
# RUN apt install service -y
# RUN sed -i 's/Listen 80/Listen 1100/g' /etc/apache2/ports.conf
# CMD ["service", "apache2", "start"]
