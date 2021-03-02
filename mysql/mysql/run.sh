mariadbd --user=root --datadir=/var/lib/mysql &
#echo -n "Waiting for mariadb to launch"
#until mariadbd --user=root --datadir=/var/lib/mysql
#do
#sleep 0.1
#echo -n '.'
#done
tail -f /dev/null
