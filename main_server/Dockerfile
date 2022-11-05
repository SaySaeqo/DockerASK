FROM ubuntu:latest
EXPOSE 8080
EXPOSE 8081
ARG PORT_ARG=8080
RUN apt-get update
RUN apt-get install -y apache2
#RUN mkdir -p /run/apache2
RUN sed -i "s/Listen 80/Listen $PORT_ARG/g" /etc/apache2/httpd.conf

#CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
