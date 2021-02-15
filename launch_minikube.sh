
dl_mini_bin () {
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo mkdir -p /usr/local/bin/
sudo install minikube /usr/local/bin/
rm minikube
}

if [[ -z $(minikube addons list | grep metallb) ]]
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

if [[ -z $(minikube addons list | grep metallb | grep enabled) ]]
then
	echo "Enabling Metallb"
	minikube addons enable metallb
fi

minikube start --driver=docker
kubectl apply -f metallb_setup.yaml
