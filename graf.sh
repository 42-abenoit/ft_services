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
#set_global_cluster_ip
kubectl apply -f metallb/config.yaml
}

influxdb_setup () {
docker build -t influxdb-local influxdb
kubectl apply -f influxdb/influxdb.yaml
return 0
}

grafana_setup () {
docker build -t grafana-local grafana
kubectl apply -f grafana/grafana.yaml
return 0
}

minikube start
eval $(minikube docker-env)
metallb_manual_enable
influxdb_setup
grafana_setup
