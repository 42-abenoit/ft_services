run_ftps=$(kubectl get pvc | grep ftps-claim | awk '{print $2}')
until [[ $rdy_ftps=="Bound" ]]
do
run_ftps=$(kubectl get pvc | grep ftps-claim | awk '{print $2}')
done

run_ftps=$(kubectl get pods | grep ftps-deployment | awk '{print $3}')
until [[ $rdy_ftps=="Running" ]]
do
run_ftps=$(kubectl get pods | grep ftps-deployment | awk '{print $3}')
done

rdy_ftps=$(kubectl get pods | grep ftps-deployment | awk '{print $2}')
until [[ $rdy_ftps=="1/1" ]]
do
rdy_ftps=$(kubectl get pods | grep ftps-deployment | awk '{print $2}')
done

ftps_pod=$(kubectl get pods | grep ftps-deployment | awk '{print $1}')
kubectl exec $ftps_pod -- sh -c "mkdir /home/ftp/ftpuser"
kubectl exec $ftps_pod -- sh -c 'echo "ftppass
ftppass" | adduser -h /home/ftp/ftpuser ftpuser'
kubectl exec $ftps_pod -- sh -c 'chmod 755 /home/ftp/ftpuser'
