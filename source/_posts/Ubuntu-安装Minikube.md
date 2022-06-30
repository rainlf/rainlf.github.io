---
title: Ubuntu 安装Minikube
date: 2022-06-22 15:32:11
category: Ubuntu
tag: [ubuntu, kubernetes, minikube]
---

## 环境
> Ubuntu 20.04 LTS  

## 安装
下载`minikube`  
```shell
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
```

安装命令  
```shell
sudo install minikube-linux-amd64 /usr/local/bin/minikube
```

启动集群  
```shell
➜  ~ minikube start
😄  minikube v1.25.2 on Ubuntu 20.04
✨  Automatically selected the docker driver. Other choices: none, ssh
👍  Starting control plane node minikube in cluster minikube
🚜  Pulling base image ...
💾  Downloading Kubernetes v1.23.3 preload ...
    > preloaded-images-k8s-v17-v1...: 505.68 MiB / 505.68 MiB  100.00% 634.83 K
    > index.docker.io/kicbase/sta...: 379.06 MiB / 379.06 MiB  100.00% 529.16 K
❗  minikube was unable to download gcr.io/k8s-minikube/kicbase:v0.0.30, but successfully downloaded docker.io/kicbase/stable:v0.0.30 as a fallback image
🔥  Creating docker container (CPUs=2, Memory=9600MB) ...
❗  This container is having trouble accessing https://k8s.gcr.io
💡  To pull new external images, you may need to configure a proxy: https://minikube.sigs.k8s.io/docs/reference/networking/proxy/
🐳  Preparing Kubernetes v1.23.3 on Docker 20.10.12 ...
    ▪ kubelet.housekeeping-interval=5m
    ▪ Generating certificates and keys ...
    ▪ Booting up control plane ...
    ▪ Configuring RBAC rules ...
🔎  Verifying Kubernetes components...
    ▪ Using image gcr.io/k8s-minikube/storage-provisioner:v5
🌟  Enabled addons: default-storageclass, storage-provisioner
🏄  Done! kubectl is now configured to use "minikube" cluster and "default" namespace by default
```

停止集群
```shell
minikube stop
```

## 参考
1. [minikube start](https://minikube.sigs.k8s.io/docs/start/)
1. [kubectl command](http://kubernetes.kansea.com/docs/user-guide/kubectl/kubectl/)


