dir=$(dirname $(realpath $0))
dir=$(dirname $dir)

pod=$1
if [[ $pod == "nginx" ]]
then
eval $(minikube docker-env)
docker build -t nginx-local $dir/img/nginx
kubectl delete deployment nginx
kubectl delete svc nginx-svc
kubectl apply -f $dir/k8s_conf/nginx.yaml 
elif [[ $pod == "pma" ]]
then
eval $(minikube docker-env)
docker build -t pma-local $dir/img/pma
kubectl delete deployment pma
kubectl delete svc pma-svc
kubectl apply -f $dir/k8s_conf/pma.yaml 
elif [[ $pod == "mysql" ]]
then
eval $(minikube docker-env)
docker build -t mysql-local $dir/img/mysql
kubectl delete deployment mysql
kubectl delete svc mysql-svc
	if [[ $2 == "claim" ]]
	then
	kubectl delete pvc mysql-claim
	fi
kubectl apply -f $dir/k8s_conf/mysql.yaml 
elif [[ $pod == "wp" ]]
then
eval $(minikube docker-env)
docker build -t wordpress-local $dir/img/wordpress
kubectl delete deployment wordpress
kubectl delete svc wordpress-svc
kubectl apply -f $dir/k8s_conf/wordpress.yaml 
elif [[ $pod == "ftps" ]]
then
eval $(minikube docker-env)
docker build -t ftps-local $dir/img/ftps
kubectl delete deployment ftps
kubectl delete svc ftps-svc
	if [[ $2 == "claim" ]]
	then
	kubectl delete pvc ftps-claim
	fi
kubectl apply -f $dir/k8s_conf/ftps.yaml 
elif [[ $pod == "influxdb" ]]
then
eval $(minikube docker-env)
docker build -t influxdb-local $dir/img/influxdb
kubectl delete deployment influxdb
kubectl delete svc influxdb-svc
	if [[ $2 == "claim" ]]
	then
	kubectl delete pvc influxdb-claim
	fi
kubectl apply -f $dir/k8s_conf/influxdb.yaml 
elif [[ $pod == "grafana" ]]
then
eval $(minikube docker-env)
docker build -t grafana-local $dir/img/grafana
kubectl delete deployment grafana
kubectl delete svc grafana-svc
kubectl apply -f $dir/k8s_conf/grafana.yaml 
else
echo nope
fi
