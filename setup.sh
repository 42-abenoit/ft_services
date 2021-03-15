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

print_title

initial_checks

launch_minikube

eval $(minikube docker-env)

influxdb_setup
grafana_setup
mysql_setup
pma_setup
nginx_setup
wordpress_setup
ftps_setup

print_passwords
