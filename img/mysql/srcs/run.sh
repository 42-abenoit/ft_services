if [ ! $(stat /var/lib/mysql/init.beacon) ]
then
mariadb-install-db --user=root --datadir=/var/lib/mysql --skip-networking=0 --bind-address=0.0.0.0 --port=3306
mariadbd --user=root --datadir=/var/lib/mysql --skip-networking=0 --bind-address=0.0.0.0 --port=3306 &
sleep 0.5
echo Waiting for mariadb initialisation
mariadb-admin ping
if [ $? -eq 1 ]
then
sleep 0.2
mariadb-admin ping
fi
mariadb --user=root <<- EOF
						use mysql;
						CREATE USER 'myuser'@'%' IDENTIFIED BY 'mypass';
						GRANT ALL PRIVILEGES ON *.* TO 'myuser'@'%'WITH GRANT OPTION;
						CREATE DATABASE wordpress;
						CREATE USER 'wpuser'@'%' IDENTIFIED BY 'wppass';
						GRANT ALL PRIVILEGES ON wordpress.* TO 'wpuser'@'%' WITH GRANT OPTION;
						DROP DATABASE test;
						FLUSH PRIVILEGES;
						EOF
mariadb wordpress --user=root < srcs/wordpress.sql
touch /var/lib/mysql/init.beacon
telegraf -config /etc/telegraf.conf
else
mariadbd --user=root --datadir=/var/lib/mysql --skip-networking=0 --bind-address=0.0.0.0 --port=3306 &
telegraf -config /etc/telegraf.conf
fi
