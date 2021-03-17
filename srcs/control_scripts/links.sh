#!/bin/bash

STYLE="\e[1m\e[36m"
MINI_IP=$(minikube ip)

echo -e "$STYLE""\n        ACCESS PORTAL\e[0m"
echo -e "$STYLE""==> http://$MINI_IP <==\e[0m"
echo -e "$STYLE""\nQuick access\e[0m"
echo -e "$STYLE""Wordpress:  http://$MINI_IP:5050\e[0m"
echo -e "$STYLE""PhpMyAdmin: http://$MINI_IP:5000\e[0m"
echo -e "$STYLE""Grafana:    http://$MINI_IP:3000\e[0m"
