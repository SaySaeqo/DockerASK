FROM ubuntu:latest
EXPOSE 8080
EXPOSE 8081
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y systemctl
RUN apt-get install -y nano
RUN apt-get install -y net-tools
#RUN mkdir -p /run/apache2
ARG PORT_ARG=8080
RUN sed -i "s/Listen 80/Listen $PORT_ARG/g" /etc/apache2/ports.conf

#CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
