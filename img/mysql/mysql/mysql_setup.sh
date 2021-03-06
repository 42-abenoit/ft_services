apk update
apk add mariadb mariadb-client
apk add	telegraf
#sed -i 's/skip-networking/#skip-networking/g' /etc/my.cnf.d/mariadb-server.cnf
#sed -i "/\[mysqld\]/a skip-grant-tables\n" /etc/my.cnf
mkdir -p /run/mysqld
chown -R mysql:mysql /run/mysqld/
chown -R mysql:mysql /var/lib/mysql
cp mysql/telegraf.conf /etc/telegraf.conf
#cp /mysql/my.cnf /etc/my.cnf.d/mariadb-server.cnf
#cp /mysql/my.cnf /var/lib/my.cnf

#sleep 0.5

#echo -n "Waiting for mariadb to launch"
#until mariadb
#do
#sleep 0.1
#echo -n '.'
#done

#mariadb --user=root < /mysql/wp-user.sql

#sleep 0.1
#echo -n "Waiting for mariadb to launch"
#cmp=$(ps | grep mariadb | wc -l)
#while [ ! $cmp -eq 3 ]
#do
#cmp=$(ps | grep mariadb | wc -l)
#sleep 0.2
#echo -n .
#done
#echo

#mysql < /mysql/wp-user.sql

#sleep 0.5 && echo "
#n
#n
#Y
#n
#Y
#Y
#" | mysql_secure_installation

#sleep 1
#mysqladmin -u root password root-pass
#mysql -u root
