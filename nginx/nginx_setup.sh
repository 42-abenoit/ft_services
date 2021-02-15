!#/bin/bash

apk update
apk add nginx
echo "1234\n1234\n" | adduser -g 'nginx www su' -h /home/www/ wwwsu
mkdir /run/nginx 
touch /run/nginx/nginx.pid
nginx
ps
tail -f /dev/null
