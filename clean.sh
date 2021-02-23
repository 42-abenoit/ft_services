minikube delete
rm -rf ~/.minikube
img=$(docker images | grep gcr.io | awk '{print $3g}')
docker rmi $img
yes "y" | docker system prune
