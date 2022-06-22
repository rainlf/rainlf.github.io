---
title: Mac 安装Yarn
date: 2022-06-19 12:19:28
category: Mac
tag: [mac, yarn]
---

## 安装
使用`homebrew`安装
```shell
brew install yarn
```

## 配置镜像源
安装`yrm`
```shell
yarn global add yrm
```

查询可用镜像源
```shell
yrm ls
```

测试镜像源，如
```shell
yrm test taobao        
```

选择镜像源，如
```shell
yrm use taobao
```
