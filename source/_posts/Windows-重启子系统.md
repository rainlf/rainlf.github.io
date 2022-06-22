---
title: Windows 重启子系统
date: 2022-01-14 22:54:44
category: Windows
tag: [windows]
---

## 环境

> Windows 10 Pro

## 说明

> Windows 子系统（WSL）是基于 LxssManager 服务运行的，只需将 LxssManager 重启即可



## 操作

> 已管理员权限运行 cmd，执行

```
# 停止 LxssManager 服务
net stop LxssManager

# 启动 LxssManager 服务
net start LxssManager
```

