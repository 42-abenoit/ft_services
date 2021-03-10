. ./scripts/prints.fn
. ./scripts/metallb.fn
. ./scripts/pods_setup.fn
. ./scripts/minikube_utils.fn

dir=$(dirname $(realpath $0))
echo $dir


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

minikube start --vm-driver=docker
minikube addons enable dashboard

metallb_manual_enable

eval $(minikube docker-env)

influxdb_setup
grafana_setup
mysql_setup
pma_setup
nginx_setup
wordpress_setup
ftps_setup
