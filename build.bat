docker kill marek
docker rm marek
docker build -t test .
docker run -d -p 1100:1100 --name marek test
