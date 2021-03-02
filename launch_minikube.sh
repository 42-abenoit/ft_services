dl_mini_bin () {
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo mkdir -p /usr/local/bin/
sudo install minikube /usr/local/bin/
rm minikube
}

kubectl_latest () {
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
}

set_global_cluster_ip () {
if [[ $(uname) == "Linux" ]]
#then
#	MINI_IP=172.17.0.10
then
	MINI_IP=192.168.49.3
else
	MINI_IP=$(minikube ip)
fi
cp -f metallb/metallb_config.yaml metallb/config.yaml
sed -i "s/MINI_IP/$MINI_IP/g" metallb/config.yaml
#alternate method :
#kubectl get node -o=custom-columns='DATA:status.addresses[0].address'
}

metallb_mini_enable () {
if [[ -z $(minikube addons list | grep metallb | grep enabled) ]]
then
	echo "Enabling Metallb"
	minikube addons enable metallb
	kubectl apply -f metallb/config.yaml
#	echo "$MINI_IP\n$MINI_IP\n" | minikube addons configure metallb
fi
}

metallb_manual_enable () {
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
kubectl get configmap kube-proxy -n kube-system -o yaml | \
sed -e "s/strictARP: false/strictARP: true/" | \
kubectl apply -f - -n kube-system
if [ "$(kubectl get secrets --namespace metallb-system | grep memberlist)" = "" ]
	then
	kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
fi
set_global_cluster_ip
kubectl apply -f metallb/config.yaml
}

clean () {
minikube delete
rm -rf ~/.minikube
}

nginx_setup () {
docker build -t nginx-local nginx
kubectl apply -f nginx/nginx.yaml
}

pma_setup () {
docker build -t pma-local pma
kubectl apply -f pma/pma.yaml
}

mysql_setup () {
docker build -t mysql-local mysql
kubectl apply -f mysql/mysql.yaml
}

mysql_initdb () {
run_mysql=$(kubectl get pods | grep mysql-deployment | awk '{print $3}')
until [[ $rdy_mysql=="Running" ]]
do
run_mysql=$(kubectl get pods | grep mysql-deployment | awk '{print $3}')
done

rdy_mysql=$(kubectl get pods | grep mysql-deployment | awk '{print $2}')
until [[ $rdy_mysql=="1/1" ]]
do
rdy_mysql=$(kubectl get pods | grep mysql-deployment | awk '{print $2}')
done

mysql_pod=$(kubectl get pods | grep mysql-deployment | awk '{print $1}')
kubectl exec $mysql_pod -- sh -c "mariadb-install-db --user=root --datadir=/var/lib/mysql"						
kubectl exec $mysql_pod -- sh -c "mariadbd --user=root --datadir=/var/lib/mysql &"
kubectl exec $mysql_pod -- sh -c "mariadb --user=root <<- EOF
							use mysql;
							CREATE USER 'myuser'@'%' IDENTIFIED BY 'mypass';
							GRANT ALL PRIVILEGES ON *.* TO 'myuser'@'%'WITH GRANT OPTION;
							CREATE DATABASE wordpress;
							CREATE USER 'wpuser'@'%' IDENTIFIED BY 'wppass';
							GRANT ALL PRIVILEGES ON wordpress.* TO 'wpuser'@'%' WITH GRANT OPTION;
							FLUSH PRIVILEGES;
							EOF"
}

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
metallb_manual_enable

eval $(minikube docker-env)

mysql_setup
pma_setup
nginx_setup
mysql_initdb
