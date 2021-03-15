. ./install_scripts/prints.fn
. ./install_scripts/metallb.fn
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

if [[ $(minikube version | grep version | tr -d ':-z' | tr -d ' ' | tr -d '.') -lt 1100 ]]
then
	echo "Current minikube version doesn't support metallb."
	echo "Updating:"
	dl_mini_bin
fi

if [[ -z $(service nginx status | grep Active | grep inactive) ]]
then
	echo "Stopping nginx"
	service nginx stop
fi

if [[ ! -z $(service docker status | grep Active | grep inactive) ]]
then
	echo "Launching Docker"
	service docker start
fi

echo -en "$STYLE""Starting Minikube \e[0m"
progress_anim & WPID=$!
minikube start --vm-driver=docker > ./logs/minikube.log 2> ./logs/minikube.err
minikube addons enable dashboard >> ./logs/minikube.log 2>> ./logs/minikube.err
metallb_manual_enable >> ./logs/minikube.log 2>> ./logs/minikube.err
kill $WPID >/dev/null 2>/dev/null
wait $WPID >/dev/null 2>/dev/null
print_success


eval $(minikube docker-env)

echo -en "$STYLE""Setting up Influxdb \e[0m"
progress_anim & WPID=$!
influxdb_setup
kill $WPID >/dev/null 2>/dev/null
wait $WPID >/dev/null 2>/dev/null
print_success
echo -en "$STYLE""Setting up Grafana \e[0m"
progress_anim & WPID=$!
grafana_setup
kill $WPID >/dev/null 2>/dev/null
wait $WPID >/dev/null 2>/dev/null
print_success
echo -en "$STYLE""Setting up Mysql \e[0m"
progress_anim & WPID=$!
mysql_setup
kill $WPID >/dev/null 2>/dev/null
wait $WPID >/dev/null 2>/dev/null
print_success
echo -en "$STYLE""Setting up PhpMyAdmin \e[0m"
progress_anim & WPID=$!
pma_setup
kill $WPID >/dev/null 2>/dev/null
wait $WPID >/dev/null 2>/dev/null
print_success
echo -en "$STYLE""Setting up Nginx \e[0m"
progress_anim & WPID=$!
nginx_setup
kill $WPID >/dev/null 2>/dev/null
wait $WPID >/dev/null 2>/dev/null
print_success
echo -en "$STYLE""Setting up Wordpress \e[0m"
progress_anim & WPID=$!
wordpress_setup
kill $WPID >/dev/null 2>/dev/null
wait $WPID >/dev/null 2>/dev/null
print_success
echo -en "$STYLE""Setting up Ftps server \e[0m"
progress_anim & WPID=$!
ftps_setup
kill $WPID >/dev/null 2>/dev/null
wait $WPID >/dev/null 2>/dev/null
print_success

print_passwords
