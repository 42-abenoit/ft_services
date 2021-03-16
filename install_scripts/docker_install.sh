echo -e "Windows 10 64bits: https://desktop.docker.com/win/stable/Docker%20Desktop%20Installer.exe"
echo -e "Macos: https://desktop.docker.com/mac/stable/Docker.dmg"
echo -e 'Ubuntu: "sudo apt-get update && sudo apt-get docker"'

echo -e "\nsudo groupadd docker"
echo -e "sudo usermod -aG docker $USER"
echo -e "newgrp docker"
