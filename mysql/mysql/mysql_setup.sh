apk update
apk add mariadb mariadb-client
sed -i 's/skip-networking/#skip-networking/g' /etc/my.cnf.d/mariadb-server.cnf
#sed -i "/\[mysqld\]/a skip-grant-tables\n" /etc/my.cnf
mariadb-install-db --user=mysql --datadir=/var/lib/mysql
cd '/usr' ; /usr/bin/mariadbd-safe --datadir='/var/lib/mysql' &

sleep 0.1
echo -n "Waiting for mariadb to launch"
cmp=$(ps | grep mariadb | wc -l)
while [ ! $cmp -eq 3 ]
do
cmp=$(ps | grep mariadb | wc -l)
sleep 0.2
echo -n .
done
echo

#sleep 0.5 && echo "
#n
#n
#Y
#n
#Y
#Y
#" | mysql_secure_installation

sleep 1
mysqladmin -u root password root-pass
mysql -u root
mysql < /mysql/wp-user.sql
