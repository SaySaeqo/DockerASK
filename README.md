# DockerASK
<i>build_simple_env.bat</i> creates in docker fully configured nginx reverse proxy server in separate network and apache server.
They are connected.

### Run help.
1. Run Docker Desktop.
2. Run batch script.
3. Type **localhost/www_server** in your browser.
4. Et voila.

### More services.
If you want to add more services servers to the network and forward to them by nginx reverse proxy you need to add them **manually** in **/etc/nginx/conf.d/default.conf**.
The example used in this configuration:
`location  /www_server  { proxy_pass http://WWW_SERVER_IP:8080/; }`