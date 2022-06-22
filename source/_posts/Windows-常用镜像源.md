---
title: Windows 常用镜像源整理
date: 2022-01-27 15:11:40
category: Windows
tag: [windows, config, pip, yarn, npm, anaconda]
---

## 环境

> Windows 10 Pro



## Pip 镜像源

> 在`%APPDATA%`目录下新建`\pip\pip.ini\`，并编辑内容

```properties
[global]
timeout = 6000
trusted-host=mirrors.aliyun.com
index-url=http://mirrors.aliyun.com/pypi/simple/
```

> 查看

```shell
pip config get global.index-url
```



## Yarn/Npm 镜像源

> 配置

```shell
yarn config set registry https://registry.npm.taobao.org
```

> 查看

```shell
yarn config get registry
```



## Anaconda 源

> 配置

```powershell
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge 
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/msys2/
conda config --set show_channel_urls yes
```

> 查看

```powershell
conda config --show-sources
conda clean -i
```

