#kubectl apply -f config.yml
kubectl delete deployment nginx-deployment
kubectl delete svc nginx-svc
kubectl apply -f nginx.yaml 
kubectl apply -f nginx-svc.yaml 
kubectl get svc
