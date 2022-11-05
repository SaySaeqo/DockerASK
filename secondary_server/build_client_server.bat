docker build -t apache_secondary .
docker run -d --name secondary_main apache_secondary
