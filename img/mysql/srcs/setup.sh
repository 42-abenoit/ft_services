mkdir -p /run/mysqld
chown -R mysql:mysql /run/mysqld/
chown -R mysql:mysql /var/lib/mysql
cp srcs/telegraf.conf /etc/telegraf.conf
