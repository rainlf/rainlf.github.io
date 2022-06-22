---
title: Windows 启动Postman后灰屏问题
date: 2022-01-14 23:01:27
category: Windows
tag: [windows, bug]
---
## 环境

> Windows 10 Pro
>
> Postman v9.0.7 



## 说明

> 解决 Postman 使用或启动后，突然出现灰屏的问题



## 步骤

> 添加系统环境变量

```
POSTMAN_DISABLE_GPU = true
```

