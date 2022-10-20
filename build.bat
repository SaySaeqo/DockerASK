docker rm marek
docker build -t test .
docker run -it -p 1100:1100 --name marek test