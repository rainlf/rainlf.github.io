---
title: Windows 桌面图标丢失问题
date: 2022-07-08 10:24:26
category: Windows
tag: [windows, bug]
---

## 环境
> Windows 10 Pro  

## 方案
`win + r` 输入  
```shell
%USERPROFILE%\AppData\Local
```

删除图标缓存文件`IconCache.db`后，刷新即可