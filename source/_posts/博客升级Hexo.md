---
title: 博客升级Hexo
date: 2022-07-04 10:34:13
category: Blog
tag: [blog]
---

## 步骤
安装`npm-check`和`npm-upgrade`工具
```shell
npm install -g npm-check npm-upgrade
```

升级检测
```shell
npm-check
```

执行升级
```shell
npm-upgrade
```

保存升级
```shell
npm update -g --save
```

查看`hexo`插件版本
```shell
npm outdated
```