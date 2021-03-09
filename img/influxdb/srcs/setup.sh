influxd &

sleep 0.5

#echo -n "Waiting for influxd to launch"
#cmp=$(pgrep influxdb | wc -l)
#while [ ! $cmp -eq 0 ]
#do
#cmp=$(pgrep influxdb | wc -l)
#sleep 0.2
#echo -n .
#done
#echo

until [ ! $(influx -host 127.0.0.1 -port 8086 -execute 'exit') ]
do
sleep 0.2
echo -n .
done

influx -host 127.0.0.1 -port 8086 <<- EOF
create database telegraf;
create user telegrafuser with password 'telegrafpass';
EOF

cp /srcs/telegraf.conf /etc/telegraf.conf
