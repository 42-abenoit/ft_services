dir=$(dirname $(realpath $0))
dir=$(dirname $dir)

pod=$1
if [[ $pod == "nginx" ]]
then
kubectl delete deployment nginx
kubectl delete svc nginx-svc
elif [[ $pod == "pma" ]]
then
kubectl delete deployment pma
kubectl delete svc pma-svc
elif [[ $pod == "mysql" ]]
then
kubectl delete deployment mysql
kubectl delete svc mysql-svc
	if [[ $2 == "claim" ]]
	then
	kubectl delete pvc mysql-claim
	fi
elif [[ $pod == "wp" ]]
then
kubectl delete deployment wordpress
kubectl delete svc wordpress-svc
elif [[ $pod == "ftps" ]]
then
kubectl delete deployment ftps
kubectl delete svc ftps-svc
	if [[ $2 == "claim" ]]
	then
	kubectl delete pvc ftps-claim
	fi
elif [[ $pod == "influxdb" ]]
then
kubectl delete deployment influxdb
kubectl delete svc influxdb-svc
	if [[ $2 == "claim" ]]
	then
	kubectl delete pvc influxdb-claim
	fi
elif [[ $pod == "grafana" ]]
then
kubectl delete deployment grafana
kubectl delete svc grafana-svc
else
echo nope
fi
