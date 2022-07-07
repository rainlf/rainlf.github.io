---
title: Ubuntu 安装Kubectl
date: 2022-06-22 11:35:41
category: Linux
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

## 常用命令
```shell
kubectl config view                         # 查看kubectl配置
kubectl config get-contexts                 # 查看kubectl context列表
kubectl config use-context <context-name>   # 设置当前context
kubectl config current-context              # 查看当前context
kubectl config set-context --current --namespace=<namespace>    # 设置当前context default namespace

kubectl get node                            # 获取kubernetes节点
kubectl get node -o wide                    # 获取kubernetes节点（展示详细信息）
kubectl get node --show-labels              # 获取kubernetes节点（展示label信息）

kubectl get pods                            # 获取pod（default namespace）
kubectl get node -n <namespace>             # 获取pod（指定 namespace）
kubectl get node --all-namespace            # 获取pod（全部 namespace）
kubectl get pod <pod-name> -o yaml          # 获取pod（yaml格式）
```

## 参考
1. [kubectl install](https://kubernetes.io/docs/tasks/tools/?spm=5176.2020520152.0.0.405816ddd71VlD)  
1. [kubectl command](http://kubernetes.kansea.com/docs/user-guide/kubectl/kubectl/)  