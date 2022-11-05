docker build -t apache_main .
docker create --privileged -i -p 8080:8080 -p 8081:8081 --name server_main apache_main