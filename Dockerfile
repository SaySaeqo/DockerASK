FROM alpine:latest
RUN apk update
RUN apk add apache2 --no-cache
RUN mkdir -p /run/apache2
RUN sed -i 's/Listen 80/Listen 1100/g' /etc/apache2/httpd.conf
RUN sed -i 's/#ServerName/ServerName/g' /etc/apache2/httpd.conf

COPY start.sh .
CMD ["/bin/sh", "start.sh"]
# CMD ["exec", "/usr/sbin/httpd", "-D", "FOREGROUND"]


# FROM ubuntu:latest

# RUN /bin/bash
# RUN apt update
# # RUN apt install systemctl -y
# # RUN apt install net-tools -y
# # RUN apt install iputils-ping -y

# RUN apt install apache2 -y
# RUN apt install service -y

# RUN sed -i 's/Listen 80/Listen 1100/g' /etc/apache2/ports.conf
# # RUN update-rc.d apache2 defaults

# CMD ["service", "apache2", "start"]
# # CMD ["systemctl", "start", "apache2"]

# # WORKDIR /

# # COPY test.sh .
# # RUN ./test.sh

# # CMD ["ls"]
# # CMD ["ping","google.com"]