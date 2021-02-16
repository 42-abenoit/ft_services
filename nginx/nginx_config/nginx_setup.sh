!#/bin/bash

apk update
apk add nginx
echo "1234\n1234\n" | adduser -D -g 'www' www
chown -R www:www /var/lib/nginx
chown -R www:www /home/www
mkdir /run/nginx 
touch /run/nginx/nginx.pid
touch /var/log/nginx/access.log
mv -f /nginx_config/nginx.conf /etc/nginx/nginx.conf
mv -f /nginx_config/host_setup /etc/nginx/conf.d/default.conf
cp -f /nginx_config/index.css /home/www/
cp -f nginx_config/index.html /home/www/
nginx
tail -f /dev/null
