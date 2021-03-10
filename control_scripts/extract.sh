pod=$1
if [[ $pod == "nginx" ]]
then
pod=$(kubectl get pods | grep nginx | awk '{print $1}')
elif [[ $pod == "pma" ]]
then
pod=$(kubectl get pods | grep pma | awk '{print $1}')
elif [[ $pod == "mysql" ]]
then
pod=$(kubectl get pods | grep mysql | awk '{print $1}')
elif [[ $pod == "wp" ]]
then
pod=$(kubectl get pods | grep wordpress | awk '{print $1}')
elif [[ $pod == "ftps" ]]
then
pod=$(kubectl get pods | grep ftps | awk '{print $1}')
elif [[ $pod == "grafana" ]]
then
pod=$(kubectl get pods | grep grafana | awk '{print $1}')
elif [[ $pod == "influxdb" ]]
then
pod=$(kubectl get pods | grep influxdb | awk '{print $1}')
else
echo "pod doesn\'t exist"
return 0
fi
kubectl cp $pod:$2 $3
