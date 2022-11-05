docker build -t apache_main .
docker run --privileged -it -p 8080:8080 -p 8081:8081 --name server_main apache_main
