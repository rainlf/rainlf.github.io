---
title: Ubuntu 安装K9s
date: 2022-06-22 10:49:25
category: Linux
tag: [ubuntu, kubernetes, k9s]
---

## 环境

> Ubuntu 20.04 LTS  
> K9s v0.25.18  
 

## 安装
点击[下载页面](https://github.com/derailed/k9s/releases)，下载最新的`release`文件，如
```shell
curl -Lo k9s.tgz https://github.com/derailed/k9s/releases/download/v0.25.18/k9s_Linux_x86_64.tar.gz
```

安装命令
```shell
sudo install k9s /usr/local/bin/
```

查看信息
```shell
➜  k9s k9s info
 ____  __.________
|    |/ _/   __   \______
|      < \____    /  ___/
|    |  \   /    /\___ \
|____|__ \ /____//____  >
        \/            \/

Configuration:   /home/rain/.config/k9s/config.yml
Logs:            /tmp/k9s-rain.log
Screen Dumps:    /tmp/k9s-screens-rain
```

常用命令
```shell
# List all available CLI options
k9s help
# Get info about K9s runtime (logs, configs, etc..)
k9s info
# Run K9s in a given namespace.
k9s -n k8s-ns
# Run K9s and launch in pod view via the pod command.
k9s -c pod
# Start K9s in a non default KubeConfig context
k9s --context coolCtx
# Start K9s in readonly mode - with all modification commands disabled
k9s --readonly
```

## 注意
`Ubuntu`操作系统下，不要使用以下命令安装`k9s`
```shell
# sudo snap install k9s
```
该安装方式会使用沙盒模式，无法穿过`Ubuntu`的防火墙。
