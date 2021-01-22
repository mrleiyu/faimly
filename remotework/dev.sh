#!/bin/bash

###用法

#fix
mkdir -p ~/Workspace/wwwlogs

# docker1
apt-get install -y docker.io
usermod -aG docker $USER
newgrp docker
service docker restart
docker build --pull --rm -f  "docker/dev/dockerfile" -t remotework:latest "docker/dev"

#docker2
# snap install docker
# groupadd docker
# usermod -aG docker $USER
# snap restart docker 
# chmod 666 /var/run/docker.sock


#k3s
curl -sfL https://docs.rancher.cn/k3s/k3s-install.sh | INSTALL_K3S_EXEC="server --docker" INSTALL_K3S_MIRROR=cn sh -


#helm 
snap install helm --classic
helm --kubeconfig=/etc/rancher/k3s/k3s.yaml uninstall  dev
helm --kubeconfig=/etc/rancher/k3s/k3s.yaml install dev ./helm/dev --set basedir=/home/$USER/Workspace







