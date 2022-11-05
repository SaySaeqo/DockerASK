docker build --build-arg PORT_ARG=%2 -t myapache .
docker run -d -p %2:%2 --name %1 myapache
