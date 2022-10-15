FROM ubuntu:latest

RUN /bin/bash
RUN apt update
RUN apt install systemctl -y
RUN apt install net-tools -y
RUN apt install iputils-ping -y

RUN apt install apache2 -y
RUN update-rc.d apache2 defaults
RUN systemctl start apache2

# WORKDIR /

# COPY test.sh .
# RUN ./test.sh

CMD ["ifconfig"]