---
title: Ubuntu 安装Docker
date: 2022-02-10 18:17:41
category: Linux
tag: [linux, docker]
---

## 环境

> Ubuntu 20.04 LTS  
> Docker 20.10.12  


## 说明

`Ubuntu`安装`docker`运行时环境，参考[官方文档](https://docs.docker.com/engine/install/ubuntu/)



## 步骤

删除旧版本

```shell
sudo apt remove docker docker-engine docker.io containerd runc
```

配置仓库

```shell
sudo apt install -y ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

安装`docker`引擎

```shell
sudo apt-get update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io
```

启动服务

```shell
sudo service docker start
```

赋予当前用户`docker`操作权限
```shell
 sudo usermod -aG docker $USER && newgrp docker
```



