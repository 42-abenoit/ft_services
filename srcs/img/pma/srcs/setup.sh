#nginx user setup
echo "1234\n1234\n" | adduser -D -g 'www' www
chown -R www:www /var/lib/nginx
chown -R www:www /home/www
mkdir /run/nginx 
touch /run/nginx/nginx.pid
touch /var/log/nginx/access.log

#nginx configuration
mv -f /srcs/nginx.conf /etc/nginx/nginx.conf
chown www:www /etc/nginx/nginx.conf
mv -f /srcs/host_setup /etc/nginx/conf.d/default.conf
chown www:www /etc/nginx/conf.d/default.conf
cp -f /srcs/index.css /home/www/
cp -f /srcs/index.html /home/www/

#pma setup
mkdir -p /var/lib/phpmyadmin/tmp
chown -R www:www /var/lib/phpmyadmin
mv -f /usr/share/webapps/phpmyadmin /home/www/

PHP_FPM_USER="www"
PHP_FPM_GROUP="www"
PHP_FPM_LISTEN_MODE="0660"
PHP_MEMORY_LIMIT="512M"
PHP_MAX_UPLOAD="50M"
PHP_MAX_FILE_UPLOAD="200"
PHP_MAX_POST="100M"
PHP_DISPLAY_ERRORS="On"
PHP_DISPLAY_STARTUP_ERRORS="On"
PHP_ERROR_REPORTING="E_COMPILE_ERROR\|E_RECOVERABLE_ERROR\|E_ERROR\|E_CORE_ERROR"
PHP_CGI_FIX_PATHINFO=0

sed -i "s|;listen.owner\s*=\s*nobody|listen.owner = ${PHP_FPM_USER}|g" /etc/php7/php-fpm.d/www.conf
sed -i "s|;listen.group\s*=\s*nobody|listen.group = ${PHP_FPM_GROUP}|g" /etc/php7/php-fpm.d/www.conf
sed -i "s|;listen.mode\s*=\s*0660|listen.mode = ${PHP_FPM_LISTEN_MODE}|g" /etc/php7/php-fpm.d/www.conf
sed -i "s|user\s*=\s*nobody|user = ${PHP_FPM_USER}|g" /etc/php7/php-fpm.d/www.conf
sed -i "s|group\s*=\s*nobody|group = ${PHP_FPM_GROUP}|g" /etc/php7/php-fpm.d/www.conf
sed -i "s|;log_level\s*=\s*notice|log_level = notice|g" /etc/php7/php-fpm.d/www.conf #uncommenting line 
sed -i "s/listen = 127.0.0.1:9000/listen = \/run\/php\/php-fpm7.sock/" /etc/php7/php-fpm.d/www.conf
sed -i 's/;security.limit_extensions = .php .php3 .php4 .php5 .php7/security.limit_extensions = /g' /etc/php7/php-fpm.d/www.conf


sed -i "s|display_errors\s*=\s*Off|display_errors = ${PHP_DISPLAY_ERRORS}|i" /etc/php7/php.ini
sed -i "s|display_startup_errors\s*=\s*Off|display_startup_errors = ${PHP_DISPLAY_STARTUP_ERRORS}|i" /etc/php7/php.ini
sed -i "s|error_reporting\s*=\s*E_ALL & ~E_DEPRECATED & ~E_STRICT|error_reporting = ${PHP_ERROR_REPORTING}|i" /etc/php7/php.ini
sed -i "s|;*memory_limit =.*|memory_limit = ${PHP_MEMORY_LIMIT}|i" /etc/php7/php.ini
sed -i "s|;*upload_max_filesize =.*|upload_max_filesize = ${PHP_MAX_UPLOAD}|i" /etc/php7/php.ini
sed -i "s|;*max_file_uploads =.*|max_file_uploads = ${PHP_MAX_FILE_UPLOAD}|i" /etc/php7/php.ini
sed -i "s|;*post_max_size =.*|post_max_size = ${PHP_MAX_POST}|i" /etc/php7/php.ini
sed -i "s|;*cgi.fix_pathinfo=.*|cgi.fix_pathinfo= ${PHP_CGI_FIX_PATHINFO}|i" /etc/php7/php.ini

mkdir /run/php
cp /srcs/config.inc.php /home/www/phpmyadmin/config.inc.php
chown -R www:www /home/www/phpmyadmin

cp /srcs/telegraf.conf /etc/telegraf.conf
