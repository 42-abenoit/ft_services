. ./install_scripts/prints.fn

#🗹
echo -e "\033[032m\U1f5f8\033[0m"

echo -en "\033[036m\U1f135\033[0m "
echo -en "\033[036m\U1f143\033[0m  "
echo -en "\033[036m\U1f142\033[0m "
echo -en "\033[036m\U1f134\033[0m "
echo -en "\033[036m\U1f141\033[0m "
echo -en "\033[036m\U1f145\033[0m "
echo -en "\033[036m\U1f138\033[0m "
echo -en "\033[036m\U1f132\033[0m "
echo -en "\033[036m\U1f134\033[0m "
echo -en "\033[036m\U1f142\033[0m "

#progress_anim & WPID=$!
#sleep 5
#kill $WPID >/dev/null 2>/dev/null
#wait $WPID >/dev/null 2>/dev/null
STYLE="\e[1m\e[36m"

echo "http://192.168.49.2"

kubectl get pods --namespace default
kubectl get pods --namespace kube-node-lease
kubectl get pods --namespace kube-public
kubectl get pods --namespace kube-system
kubectl get pods --namespace kubernetes-dashboard
kubectl get pods --namespace metallb-system 

kubectl get svc --namespace default
kubectl get svc --namespace kube-node-lease
kubectl get svc --namespace kube-public
kubectl get svc --namespace kube-system
kubectl get svc --namespace kubernetes-dashboard
kubectl get svc --namespace metallb-system 
