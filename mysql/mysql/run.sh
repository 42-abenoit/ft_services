mariadbd --user=root --datadir=/var/lib/mysql --skip-networking=0 --bind-address=0.0.0.0 --port=3306
#echo -n "Waiting for mariadb to launch"
#until mariadbd --user=root --datadir=/var/lib/mysql
#do
#sleep 0.1
#echo -n '.'
#done
tail -f /dev/null
