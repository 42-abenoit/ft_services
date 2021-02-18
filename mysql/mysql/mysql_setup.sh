apk update
apk add mariadb mariadb-client
#sed -i "/\[mysqld\]/a skip-grant-tables\n" /etc/my.cnf
mariadb-install-db --user=mysql --datadir=/var/lib/mysql
#/usr/bin/mariadbd-safe &
cd '/usr' ; /usr/bin/mariadbd-safe --datadir='/var/lib/mysql' &
sleep 6
echo "
n
n
Y
n
Y
Y
" | mysql_secure_installation
