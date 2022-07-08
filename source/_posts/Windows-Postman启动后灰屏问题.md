---
title: Windows Postman启动后灰屏问题
date: 2022-01-14 23:01:27
category: Windows
tag: [windows, bug]
---

## 环境
> Windows 10 Pro  
> Postman v9.0.7   


## 方案
> 添加系统环境变量

```
POSTMAN_DISABLE_GPU = true
```

