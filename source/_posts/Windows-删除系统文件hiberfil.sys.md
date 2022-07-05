---
title: Windows 删除系统文件hiberfil.sys
date: 2022-01-29 14:04:09
category: Windows
tag: [windows, optimize]
---

## 环境
> Windows 10 Pro  

## 说明

`hiberfil.sys`为`Windows`的系统休眠文件，如果系统磁盘紧张，可考虑禁用休眠功能以取消该文件。


## 步骤

以管理员权限运行`PowerShell`，执行

```powershell
powercfg -h off
```

