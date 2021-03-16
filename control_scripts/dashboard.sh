dir=$(dirname $(realpath $0))
dir=$(dirname $dir)

STYLE="\e[1m\e[36m"

dashboard_start () {
eval $(minikube docker-env)
minikube dashboard --url >$dir/logs/dashboard.log 2>$dir/logs/dashboard.err & DPID=$!
echo $DPID > $dir/logs/dashboard.pid
while [ -z $(cat $dir/logs/dashboard.log) ]
do
sleep 1
done
echo -e "$STYLE""$(cat ./logs/dashboard.log)\e[0m"
echo -e "$STYLE""Dashboard pid is: $DPID"
}

dashboard_stop () {
DPID=$(cat ./logs/dashboard.pid)
kubectl delete deployment kubernetes-dashboard --namespace kubernetes-dashboard
kubectl delete deployment dashboard-metrics-scraper --namespace kubernetes-dashboard
kubectl delete svc kubernetes-dashboard --namespace kubernetes-dashboard
kubectl delete svc dashboard-metrics-scraper --namespace kubernetes-dashboard
kill $DPID >/dev/null 2>/dev/null
wait $DPID >/dev/null 2>/dev/null
rm -f $dir/logs/dashboard.pid
}

if [[ $1 == "start" ]]
then
dashboard_start
elif [[ $1 == "stop" ]]
then
dashboard_stop
else
echo "nope"
fi
