openssl genrsa -des3 -passout pass:nginx -out /etc/nginx/ssl/phpmyadmin.key
cp /etc/nginx/ssl/phpmyadmin.key /etc/nginx/ssl/phpmyadmin.key.local
openssl rsa -in /etc/nginx/ssl/phpmyadmin.key.local -passin pass:nginx -out /etc/nginx/ssl/phpmyadmin.key
echo "FR
IDF
Paris
42
IT
abenoit
abenoit@student.42.fr
1234
" | openssl req -new -key /etc/nginx/ssl/phpmyadmin.key -out /etc/nginx/ssl/phpmyadmin.csr
openssl x509 -req -days 365 -in /etc/nginx/ssl/phpmyadmin.csr -signkey /etc/nginx/ssl/phpmyadmin.key -out /etc/nginx/ssl/phpmyadmin.crt
