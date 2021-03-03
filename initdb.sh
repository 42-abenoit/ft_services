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
kubectl exec $mysql_pod -- sh -c "mariadbd --user=root --datadir=/var/lib/mysql &"
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
