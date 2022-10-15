docker rm marek
docker build -t test .
docker run -it -p 1100:80 --name marek test