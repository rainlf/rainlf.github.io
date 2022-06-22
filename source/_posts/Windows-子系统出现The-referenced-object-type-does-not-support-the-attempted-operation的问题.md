---
title: >-
  Windows 子系统出现The referenced object type does not support the attempted
  operation的问题
date: 2022-06-22 12:38:31
category: Windows
tag: [windows, bug]
---

## 环境
> Windows 10 Pro  

## 方案
### 临时方案
以管理员身份运行
```powershell
netsh winsock reset
```

### 永久方案
下载`NoLsp`工具
```shell
http://file2.happyjava.cn/NoLsp.exe
```
以管理员身份运行
```powershell
.\NoLsp.exe C:\windows\system32\wsl.exe
```

## 参考
1. [Solve the problem that WSL2 and Proxifier cannot be used at the same time](https://blog.actorsfit.com/a?ID=01700-55c208f3-575c-41be-b656-edda3df12ef0)