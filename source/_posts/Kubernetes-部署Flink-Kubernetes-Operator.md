---
title: Kubernetes 部署Flink Kubernetes Operator
date: 2022-07-01 19:58:42
category: Cloud Native
tag: [kubernetes, flink]
---

## 环境

> Kubectl Client Version: v1.24.2  
> Kubernetes Server Version: v1.18.8  
> Helm version: v3.9.0

## 部署
部署`cert-manager`
```shell
kubectl create -f https://github.com/jetstack/cert-manager/releases/download/v1.7.1/cert-manager.yaml
```

部署`flink-kubernetes-operator`
```shell
helm repo add flink-operator-repo https://downloads.apache.org/flink/flink-kubernetes-operator-1.0.1/
helm install flink-kubernetes-operator flink-operator-repo/flink-kubernetes-operator
# 取消webhook, 指定镜像仓库, 命名空间，节点
helm install flink-kubernetes-operator flink-operator-repo/flink-kubernetes-operator -n flink --set nodeSelector.dev=flink --set webhook.create=false --set image.repository=apache/flink-kubernetes-operator
```

观察部署情况
```shell
➜  ~ kubectl get pods -n flink
NAME                                        READY   STATUS    RESTARTS   AGE
flink-kubernetes-operator-64c56bfdd-924sc   1/1     Running   0          150m
➜  ~ helm list
NAME                            NAMESPACE       REVISION        UPDATED                                 STATUS          CHART                           APP VERSION
flink-kubernetes-operator       flink           1               2022-07-01 17:27:12.2651766 +0800 CST   deployed        flink-kubernetes-operator-1.0.1 1.0.1
```

运行示例任务
```shell
kubectl create -f https://raw.githubusercontent.com/apache/flink-kubernetes-operator/release-1.0/examples/basic.yaml
```

查看任务日志
```shell
kubectl logs -f deploy/basic-example
```

删除示例任务
```shell
kubectl delete flinkdeployment/basic-example
```
