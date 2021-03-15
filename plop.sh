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

#$dash_url=$(minikube dashboard --url)

minikube dashboard --url >./logs/dashboard.log 2>./logs/dashboard.err & DPID=$!
echo $DPID > ./logs/dashboard.pid
#echo -e "$STYLE""$dash_url""\e[0m" & DPID=$!
while [ -z $(cat ./logs/dashboard.log) ]
do
sleep 1
done
echo -e "$STYLE""$(cat ./logs/dashboard.log)\e[0m"
echo -e "$STYLE""Dashboard pid is: $DPID"
#kill $DPID >/dev/null 2>/dev/null
#wait $DPID >/dev/null 2>/dev/null
