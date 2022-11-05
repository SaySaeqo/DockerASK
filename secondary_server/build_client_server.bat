docker build -t apache_secondary .
docker run -it --name secondary_server apache_secondary
