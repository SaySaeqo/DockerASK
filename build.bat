docker build --build-arg NAME_ARG=%1 --build-arg PORT_ARG=%2 -t myapache .
docker run -d -p %2:%2 --name %1 myapache
