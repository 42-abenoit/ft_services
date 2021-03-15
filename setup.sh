. ./install_scripts/prints.fn
. ./install_scripts/pods_setup.fn
. ./install_scripts/minikube_utils.fn

cl=$(tput cols)
if [ $cl -lt 105 ]
then
g_mode=0
else
g_mode=1
fi

STYLE="\e[1m\e[36m"

read capture & CAPT=$!
stty -echo
tput civis

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

print_passwords
echo -e "$STYLE""http://$MINI_IP"
stty echo
tput cnorm
kill $CAPT >/dev/null 2>/dev/null
wait $CAPT >/dev/null 2>/dev/null
