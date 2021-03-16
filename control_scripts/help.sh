#!/bin/bash

STYLE="\e[1m\e[36m"

echo -en "$STYLE"

echo -e "./control_scripts/access.sh POD"
echo -e "Open a shell terminal into selected pod."

echo -e "\n./control_scripts/pull.sh POD PATH_IN PATH_OUT"
echo -e "Extract file from PATH_IN inside POD to PATH_OUT."

echo -e "\n./control_scripts/push.sh POD PATH_IN PATH_OUT"
echo -e "PUSH file from PATH_IN to PATH_OUT inside POD."

echo -e "\n./control_scripts/logs.sh POD"
echo -e "Print kubernetes logs for selected pod."

echo -e "\n./control_scripts/build.sh POD"
echo -e "Build image and apply selected pod config files."

echo -e "\n./control_scripts/delete.sh POD [claim]"
echo -e "Delete selected pod."

echo -e "\n./control_scripts/remove.sh POD [claim]"
echo -e "Delete selected pod's deployment and service."
echo -e "If provided, claim option removes persistent"
echo -e "volume claim as well."

echo -e "\n./control_scripts/reset.sh POD [claim]"
echo -e "Delete selected pod's deployment and service"
echo -e "and rebuilds it."
echo -e "If provided, claim option removes persistent"
echo -e "volume claim as well."

echo -e "\n./control_scripts/clean.sh"
echo -e "Delete minikube cluster and temporary files."

echo -e "\n./control_scripts/restart.sh"
echo -e "Delete minikube cluster and temporary files"
echo -e "and restart project installation."

echo -e "\n./control_scripts/links.sh"
echo -e "Display services links."

echo -e "\n./control_scripts/passwords.sh"
echo -e "Display services credentials."

echo -e "\n./control_scripts/help.sh"
echo -e "Display this help message."

echo -e "\nNote: Wordpress and PhpMyAdmin are accessed"
echo -e "with "wp" and "pma" abbreviations"

echo -en "\e[0m"
