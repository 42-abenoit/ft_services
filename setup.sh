#!/bin/bash

dir=$(dirname $(realpath $0))/srcs

reset_term () {
rm -f "$dir/img/nginx/srcs/index.html"
rm -f "$dir/img/nginx/srcs/host_setup"
rm -f "$dir/img/ftps/srcs/vsftpd.conf"
rm -f "$dir/img/mysql/wordpress.sql"
rm -f "$dir/conf/metallb.yaml"
if [ -t 0 ]; then
stty sane
tput cnorm
fi
kill $DPID >/dev/null 2>/dev/null
wait $DPID >/dev/null 2>/dev/null
kill $INSTALL >/dev/null 2>/dev/null
wait $INSTALL >/dev/null 2>/dev/null
}

services_setup () {
. $dir/install_scripts/prints.fn
. $dir/install_scripts/pods_setup.fn
. $dir/install_scripts/minikube_utils.fn

cl=$(tput cols)
if [ $cl -lt 105 ]
then
g_mode=0
else
g_mode=1
fi

STYLE="\e[1m\e[36m"

clear
print_title

echo -e "$STYLE""\nInitialising Minikube\e[0m"
initial_checks
launch_minikube

echo -e "$STYLE""\nCreating Services\e[0m"
eval $(minikube docker-env)
influxdb_setup
grafana_setup
mysql_setup
pma_setup
nginx_setup
wordpress_setup
ftps_setup

echo -e "$STYLE""\nSuccess !!!\e[0m"

pods_checkup

echo -e "$STYLE""\n        ACCESS PORTAL\e[0m"
echo -e "$STYLE""==> http://$MINI_IP <==\e[0m"
echo -e "$STYLE""\nQuick access\e[0m"
echo -e "$STYLE""Wordpress:  http://$MINI_IP:5050\e[0m"
echo -e "$STYLE""PhpMyAdmin: http://$MINI_IP:5000\e[0m"
echo -e "$STYLE""Grafana:    http://$MINI_IP:3000\e[0m"
echo -e "$STYLE""\nUse these credentials to access services:\e[0m"
print_passwords
echo -e "$STYLE""\n"'Launch "minikube dashboard" to start kubernetes web interface.'"\e[0m"
echo -e "$STYLE""You can also use the scripts in control_scripts folders to interact\e[0m"
echo -e "$STYLE""with kubernetes. Call help.sh to learn how to use them !\e[0m"
return 0
}

trap reset_term EXIT

if [ -t 0 ]; then
stty -echo -icanon time 0 min 0
tput civis
fi
services_setup & INSTALL=$!
while kill -0 "$INSTALL" >/dev/null 2>&1; do
read capture
sleep 1
done
