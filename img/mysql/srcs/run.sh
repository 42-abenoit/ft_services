if [ ! $(stat /var/lib/mysql/init.beacon) ]
then
mariadb-install-db --user=root --datadir=/var/lib/mysql --skip-networking=0 --bind-address=0.0.0.0 --port=3306
mariadbd --user=root --datadir=/var/lib/mysql --skip-networking=0 --bind-address=0.0.0.0 --port=3306 &
sleep 0.5
#echo Waiting for mariadb initialisation
#mariadb-admin ping
#while [ ! $? -eq 0 ]
#do
#sleep 0.5
#mariadb-admin ping
#done
until mariadb
do
	sleep 0.5
done
mariadb mysql --user=root < srcs/init.sql
mariadb wordpress --user=root < srcs/wordpress.sql
touch /var/lib/mysql/init.beacon
telegraf -config /etc/telegraf.conf
else
mariadbd --user=root --datadir=/var/lib/mysql --skip-networking=0 --bind-address=0.0.0.0 --port=3306 &
telegraf -config /etc/telegraf.conf
fi
