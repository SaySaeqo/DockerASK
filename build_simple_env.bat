:: Create new network for our purposes.
docker network create -d bridge rev-proxy-bridge-network

:: Build www server image from dockerfile.
docker build -t apache_server -f Dockerfile.www_server .

:: Create www server.
docker run -i -d --network rev-proxy-bridge-network --name www_server apache_server

:: Get the www server ip. WARNING: Container must be run to get its IP.
For /F "Tokens=*" %%I in ('docker inspect -f {{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}} www_server') Do Set WWW_SERVER_IP=%%I

:: Build nginx reverse proxy image from dockerfile.
docker build -t nginx_rev -f Dockerfile.nginx_rev --build-arg WWW_SERVER_IP=%WWW_SERVER_IP% .

:: Create nginx reverse proxy.
docker run -d --network rev-proxy-bridge-network -p 80:80 --name nginx_rev_proxy nginx_rev