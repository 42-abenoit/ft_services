openssl genrsa -des3 -passout pass:nginx -out /etc/nginx/ssl/localhost.key
cp /etc/nginx/ssl/localhost.key /etc/nginx/ssl/localhost.key.local
openssl rsa -in /etc/nginx/ssl/localhost.key.local -passin pass:nginx -out /etc/nginx/ssl/localhost.key
echo "FR
IDF
Paris
42
IT
abenoit
abenoit@student.42.fr
1234
" | openssl req -new -key /etc/nginx/ssl/localhost.key -out /etc/nginx/ssl/localhost.csr
openssl x509 -req -days 365 -in /etc/nginx/ssl/localhost.csr -signkey /etc/nginx/ssl/localhost.key -out /etc/nginx/ssl/localhost.crt
