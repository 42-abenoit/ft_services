print_title () {
echo -en "\e[36m"
cat ./ascii/title/title.ascii
echo -e "\e[0m"
}

print_mysql_anim () {
echo -e "\e[93m"
while :; do
	for (( i=0; i<4; i++ )); do
		cat ./ascii/mysql/mysql_$i.ascii
		sleep 0.2
		echo -en "\033[5A"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -en "\033[5A"
	done
done
}

print_pma_anim () {
echo -e "\e[93m"
while :; do
	for (( i=0; i<4; i++ )); do
		cat ./ascii/pma/pma_$i.ascii
		sleep 0.2
		echo -en "\033[5A"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -en "\033[5A"
	done
done
}

print_nginx_anim () {
echo -e "\e[93m"
while :; do
	for (( i=0; i<4; i++ )); do
		cat ./ascii/nginx/nginx_$i.ascii
		sleep 0.2
		echo -en "\033[5A"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -en "\033[5A"
	done
done
}

print_ftps_anim () {
echo -e "\e[93m"
while :; do
	for (( i=0; i<4; i++ )); do
		cat ./ascii/ftps/ftps_$i.ascii
		sleep 0.2
		echo -en "\033[5A"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -en "\033[5A"
	done
done
}

print_wordpress_anim () {
echo -e "\e[93m"
while :; do
	for (( i=0; i<4; i++ )); do
		cat ./ascii/wordpress/wp_$i.ascii
		sleep 0.2
		echo -en "\033[5A"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -en "\033[5A"
	done
done
}

print_init_anim () {
echo -e "\e[93m"
while :; do
	for (( i=0; i<4; i++ )); do
		cat ./ascii/initdb/init_$i.ascii
		sleep 0.2
		echo -en "\033[5A"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -en "\033[5A"
	done
done
}

print_user_anim () {
echo -e "\e[93m"
while :; do
	for (( i=0; i<4; i++ )); do
		cat ./ascii/inituser/user_$i.ascii
		sleep 0.2
		echo -en "\033[5A"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -en "\033[5A"
	done
done
}

dl_mini_bin () {
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo mkdir -p /usr/local/bin/
sudo install minikube /usr/local/bin/
rm minikube
}

kubectl_latest () {
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
}

set_global_cluster_ip () {
if [[ $(uname) == "Linux" ]]
#then
#	MINI_IP=172.17.0.10
then
	MINI_IP=192.168.49.3
else
	MINI_IP=$(minikube ip)
fi
cp -f metallb/metallb_config.yaml metallb/config.yaml
sed -i "s/MINI_IP/$MINI_IP/g" metallb/config.yaml
#alternate method :
#kubectl get node -o=custom-columns='DATA:status.addresses[0].address'
}

metallb_mini_enable () {
if [[ -z $(minikube addons list | grep metallb | grep enabled) ]]
then
	echo "Enabling Metallb"
	minikube addons enable metallb
	kubectl apply -f metallb/config.yaml
#	echo "$MINI_IP\n$MINI_IP\n" | minikube addons configure metallb
fi
}

metallb_manual_enable () {
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
kubectl get configmap kube-proxy -n kube-system -o yaml | \
sed -e "s/strictARP: false/strictARP: true/" | \
kubectl apply -f - -n kube-system
if [ "$(kubectl get secrets --namespace metallb-system | grep memberlist)" = "" ]
	then
	kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
fi
set_global_cluster_ip
kubectl apply -f metallb/config.yaml
}

clean () {
minikube delete
rm -rf ~/.minikube
}

nginx_setup () {
docker build -t nginx-local nginx > ./logs/nginx.log 2> ./logs/nginx.err
kubectl apply -f nginx/nginx.yaml > ./logs/nginx.log 2> ./logs/nginx.err
return 0
}

pma_setup () {
docker build -t pma-local pma > ./logs/pma.log 2> ./logs/pma.err
kubectl apply -f pma/pma.yaml > ./logs/pma.log 2> ./logs/pma.err
return 0
}

mysql_setup () {
docker build -t mysql-local mysql > ./logs/mysql.log 2> ./logs/mysql.err
kubectl apply -f mysql/mysql.yaml > ./logs/mysql.log 2> ./logs/mysql.err
return 0
}

wordpress_setup () {
docker build -t wordpress-local wordpress > ./logs/wordpress.log 2> ./logs/wordpress.err
kubectl apply -f wordpress/wordpress.yaml > ./logs/wordpress.log 2> ./logs/wordpress.err
return 0
}

ftps_setup () {
docker build -t ftps-local ftps > ./logs/ftps.log 2> ./logs/ftps.err
kubectl apply -f ftps/ftps.yaml > ./logs/ftps.log 2> ./logs/ftps.err
return 0
}

mysql_initdb () {
run_mysql=$(kubectl get pods | grep mysql-deployment | awk '{print $3}')
until [[ $rdy_mysql=="Running" ]]
do
run_mysql=$(kubectl get pods | grep mysql-deployment | awk '{print $3}')
done

rdy_mysql=$(kubectl get pods | grep mysql-deployment | awk '{print $2}')
until [[ $rdy_mysql=="1/1" ]]
do
rdy_mysql=$(kubectl get pods | grep mysql-deployment | awk '{print $2}')
done

mysql_pod=$(kubectl get pods | grep mysql-deployment | awk '{print $1}')
kubectl exec $mysql_pod -- sh -c "mariadb-install-db --user=root --datadir=/var/lib/mysql --skip-networking=0 --bind-address=0.0.0.0 --port=3306"						
kubectl exec $mysql_pod -- sh -c "mariadbd --user=root --datadir=/var/lib/mysql --skip-networking=0 --bind-address=0.0.0.0 --port=3306 &"
kubectl exec $mysql_pod -- sh -c "mariadb --user=root <<- EOF
							use mysql;
							CREATE USER 'myuser'@'%' IDENTIFIED BY 'mypass';
							GRANT ALL PRIVILEGES ON *.* TO 'myuser'@'%'WITH GRANT OPTION;
							CREATE DATABASE wordpress;
							CREATE USER 'wpuser'@'%' IDENTIFIED BY 'wppass';
							GRANT ALL PRIVILEGES ON wordpress.* TO 'wpuser'@'%' WITH GRANT OPTION;
							DROP DATABASE test;
							FLUSH PRIVILEGES;
							EOF"
kubectl exec $mysql_pod -- sh -c "mariadb wordpress --user=root < mysql/wordpress.sql"
return 0
}

ftps_init_user () {
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
kubectl exec $ftps_pod -- sh -c 'echo "ftppass
ftppass" | adduser -h /home/ftp/ftpuser ftpuser'
kubectl exec $ftps_pod -- sh -c 'chmod 755 /home/ftp/ftpuser'
}

print_title

if [[ $(minikube version | grep version | tr -d ':-z' | tr -d ' ' | tr -d '.') -lt 1100 ]]
then
	echo "Current minikube version doesn't support metallb."
	echo "Updating:"
	dl_mini_bin
fi

if [[ -z $(service nginx status | grep Active | grep inactive) ]]
then
	echo "Stopping nginx"
	service nginx stop
fi

if [[ ! -z $(service docker status | grep Active | grep inactive) ]]
then
	echo "Launching Docker"
	service docker start
fi

minikube start --vm-driver=docker
metallb_manual_enable
minikube addons enable dashboard

eval $(minikube docker-env)

#mysql pod setup
mysql_setup & INIT_PID=$!
print_mysql_anim & MYSQL_PID=$!
wait $INIT_PID
ret=$?
kill $MYSQL_PID
wait $MYSQL_PID 2> /dev/null
if [ $ret -eq 0 ]
then
echo -en "\e[32m"
cat ascii/print_done
echo -e "\e[0m"
else
echo -en "\e[31m"
cat ascii/print_fail
echo -e "\e[0m"
fi

#pma pod setup
pma_setup & INIT_PID=$!
print_pma_anim & PMA_PID=$!
wait $INIT_PID
ret=$?
kill $PMA_PID
wait $PMA_PID 2> /dev/null
if [ $ret -eq 0 ]
then
echo -en "\e[32m"
cat ascii/print_done
echo -e "\e[0m"
else
echo -en "\e[31m"
cat ascii/print_fail
echo -e "\e[0m"
fi

#nginx pod setup
nginx_setup & INIT_PID=$!
print_nginx_anim & NGINX_PID=$!
wait $INIT_PID
ret=$?
kill $NGINX_PID
wait $NGINX_PID 2> /dev/null
if [ $ret -eq 0 ]
then
echo -en "\e[32m"
cat ascii/print_done
echo -e "\e[0m"
else
echo -en "\e[31m"
cat ascii/print_fail
echo -e "\e[0m"
fi

#wordpress pod setup
wordpress_setup & INIT_PID=$!
print_wordpress_anim & WP_PID=$!
wait $INIT_PID
ret=$?
kill $WP_PID
wait $WP_PID 2> /dev/null
if [ $ret -eq 0 ]
then
echo -en "\e[32m"
cat ascii/print_done
echo -e "\e[0m"
else
echo -en "\e[31m"
cat ascii/print_fail
echo -e "\e[0m"
fi

#ftps pod setup
ftps_setup & INIT_PID=$!
print_ftps_anim & FTPS_PID=$!
wait $INIT_PID
ret=$?
kill $FTPS_PID
wait $FTPS_PID 2> /dev/null
if [ $ret -eq 0 ]
then
echo -en "\e[32m"
cat ascii/print_done
echo -e "\e[0m"
else
echo -en "\e[31m"
cat ascii/print_fail
echo -e "\e[0m"
fi

#mysql db init
mysql_initdb > ./logs/init.log 2> ./logs/init.err & INIT_PID=$!
print_init_anim & MYDB_PID=$!
wait $INIT_PID
ret=$?
kill $MYDB_PID
wait $MYDB_PID 2> /dev/null
if [ $ret -eq 0 ]
then
echo -en "\e[32m"
cat ascii/print_done
echo -e "\e[0m"
else
echo -en "\e[31m"
cat ascii/print_fail
echo -e "\e[0m"
fi

#ftps user init
#ftps_init_user > ./logs/ftpuser.log 2> ./logs/ftpuser.err & INIT_PID=$!
#print_user_anim & FTPU_PID=$!
#wait $INIT_PID
#ret=$?
#kill $FTPU_PID
#wait $FTPU_PID 2> /dev/null
#if [ $ret -eq 0 ]
#then
#echo -en "\e[32m"
#cat ascii/print_done
#echo -e "\e[0m"
#else
#echo -en "\e[31m"
#cat ascii/print_fail
#echo -e "\e[0m"
#fi
