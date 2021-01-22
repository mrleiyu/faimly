###　用法
```
chmod +x ./dev.sh
sudo ./dev.sh

```

### 安装php
```
sudo chmod +x ./shell/php.sh
```
1. shell/php.sh
2. shell/docker.sh
3. shell/k3s.sh  #安装集群
4. shell/helm.sh #安装helm


### docker

docker build --pull --rm -f "docker/dev/dockerfile" -t remotework:latest "docker/dev"

### helm 

helm uninstall ./dev

# docker
