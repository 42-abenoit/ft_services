apk update
apk add influxdb
apk add telegraf

influxd &

sleep 0.5

echo -n "Waiting for influxd to launch"
cmp=$(pgrep influxdb | wc -l)
while [ ! $cmp -eq 0 ]
do
cmp=$(pgrep influxdb | wc -l)
sleep 0.2
echo -n .
done
echo

influx <<- EOF
create database telegraf;
create user telegrafuser with password 'telegrafpass';
EOF

mv /etc/telegraf.conf /etc/telegraf.conf.default
cp /influxdb/telegraf.conf /etc/telegraf.conf
