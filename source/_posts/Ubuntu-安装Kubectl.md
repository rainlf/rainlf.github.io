---
title: Ubuntu 安装Kubectl
date: 2022-06-22 11:35:41
category: Ubuntu
tag: [ubuntu, kubernetes, kubectl]
---

## 环境

> Ubuntu 20.04 LTS  

## 安装
下载最新版本
```shell
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
```

下载指定版本

```shell
curl -LO https://dl.k8s.io/release/v1.24.0/bin/linux/amd64/kubectl
```

安装命令
```shell
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
```

查看版本
```shell
kubectl version --client --output=yaml
```

将连接信息写入`$HOME/.kube/config `，
```shell
kubectl get namespace
```


## 参考
1. [kubectl install](https://kubernetes.io/docs/tasks/tools/?spm=5176.2020520152.0.0.405816ddd71VlD)  
1. [kubectl command](http://kubernetes.kansea.com/docs/user-guide/kubectl/kubectl/)  