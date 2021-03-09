pod=$1
if [[ $pod == "nginx" ]]
then
pod=$(kubectl get pods | grep nginx-deployment | awk '{print $1}')
elif [[ $pod == "pma" ]]
then
pod=$(kubectl get pods | grep pma-deployment | awk '{print $1}')
elif [[ $pod == "mysql" ]]
then
pod=$(kubectl get pods | grep mysql-deployment | awk '{print $1}')
elif [[ $pod == "wp" ]]
then
pod=$(kubectl get pods | grep wordpress-deployment | awk '{print $1}')
elif [[ $pod == "ftps" ]]
then
pod=$(kubectl get pods | grep ftps-deployment | awk '{print $1}')
else
echo nope
fi
kubectl cp $pod:$2 $3
