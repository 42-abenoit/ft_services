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
cp -f metallb_config.yml config.yml
sed -i "s/MINI_IP/$MINI_IP/g" config.yml
#alternate method :
#kubectl get node -o=custom-columns='DATA:status.addresses[0].address'
}

metallb_mini_enable () {
if [[ -z $(minikube addons list | grep metallb | grep enabled) ]]
then
	echo "Enabling Metallb"
	minikube addons enable metallb
	kubectl apply -f config.yml
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
kubectl apply -f config.yml
}

clean () {
minikube delete
rm -rf ~/.minikube
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
docker build -t nginx-local nginx
kubectl apply -f nginx.yaml
kubectl apply -f nginx-svc.yaml
