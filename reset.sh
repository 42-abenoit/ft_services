#kubectl apply -f config.yml
pod=$1
if [[ $pod == "nginx" ]]
then
eval $(minikube docker-env)
docker build -t nginx-local nginx

kubectl delete deployment nginx-deployment
kubectl delete svc nginx-svc
kubectl apply -f nginx/nginx.yaml 
#kubectl get svc
elif [[ $pod == "pma" ]]
then
eval $(minikube docker-env)
docker build -t pma-local pma

kubectl delete deployment pma-deployment
kubectl delete svc pma-svc
kubectl apply -f pma/pma.yaml 
#kubectl get svc
elif [[ $pod == "mysql" ]]
then
eval $(minikube docker-env)
docker build -t mysql-local mysql

kubectl delete deployment mysql-deployment
kubectl delete svc mysql-svc
kubectl delete pvc mysql-claim
kubectl apply -f mysql/mysql.yaml 
#kubectl get svc
elif [[ $pod == "wp" ]]
then
eval $(minikube docker-env)
docker build -t wordpress-local wordpress

kubectl delete deployment wordpress-deployment
kubectl delete svc wordpress-svc
kubectl apply -f wordpress/wordpress.yaml 
#kubectl get svc
elif [[ $pod == "ftps" ]]
then
eval $(minikube docker-env)
docker build -t ftps-local ftps

kubectl delete deployment ftps-deployment
kubectl delete svc ftps-svc
#kubectl delete pvc ftps-claim
kubectl apply -f ftps/ftps.yaml 
#kubectl get svc
else
echo nope
fi
