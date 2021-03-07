#nginx user setup
echo "1234\n1234\n" | adduser -D -g 'www' www
chown -R www:www /var/lib/nginx
chown -R www:www /home/www
mkdir /run/nginx 
touch /run/nginx/nginx.pid
touch /var/log/nginx/access.log

#nginx configuration
mv -f /srcs/nginx.conf /etc/nginx/nginx.conf
mv -f /srcs/host_setup /etc/nginx/conf.d/default.conf
cp -f /srcs/index.css /home/www/
cp -f /srcs/index.html /home/www/
cp -f /srcs/media /home/www/

#ssl key generation
mkdir /etc/nginx/ssl
sh /srcs/ssl_setup.sh

cp srcs/telegraf.conf /etc/telegraf.conf
