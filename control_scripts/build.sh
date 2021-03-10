dir=$(dirname $(realpath $0))
dir=$(dirname $dir)

pod=$1
if [[ $pod == "nginx" ]]
then
eval $(minikube docker-env)
docker build -t nginx-local $dir/img/nginx
kubectl apply -f $dir/k8s_conf/nginx.yaml 
elif [[ $pod == "pma" ]]
then
eval $(minikube docker-env)
docker build -t pma-local $dir/img/pma
kubectl apply -f $dir/k8s_conf/pma.yaml 
elif [[ $pod == "mysql" ]]
then
eval $(minikube docker-env)
docker build -t mysql-local $dir/img/mysql
kubectl apply -f $dir/k8s_conf/mysql.yaml 
elif [[ $pod == "wp" ]]
then
eval $(minikube docker-env)
docker build -t wordpress-local $dir/img/wordpress
kubectl apply -f $dir/k8s_conf/wordpress.yaml 
elif [[ $pod == "ftps" ]]
then
eval $(minikube docker-env)
docker build -t ftps-local $dir/img/ftps
kubectl apply -f $dir/k8s_conf/ftps.yaml 
elif [[ $pod == "influxdb" ]]
then
eval $(minikube docker-env)
docker build -t influxdb-local $dir/img/influxdb
kubectl apply -f $dir/k8s_conf/influxdb.yaml 
elif [[ $pod == "grafana" ]]
then
eval $(minikube docker-env)
docker build -t grafana-local $dir/img/grafana
kubectl apply -f $dir/k8s_conf/grafana.yaml 
else
echo nope
fi
