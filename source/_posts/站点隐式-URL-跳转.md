---
title: 站点隐式 URL 跳转
tag: [site]
date: 2022-01-23 11:37:48
category:
---

## 背景

当我们需要通过自己的域名连接到外部的站点时，`DNS` 解析的隐式 `URL`跳转是一个较好的选择。但由于使用了默认的 `iframe`代码文本，无法自定义站点的标题和图标，此时可以使用自定义的站点文件了实现效果。



## 站点文件

```html
<!doctype html>
<head>
    <meta charset="utf-8" />
    <title>I am site title</title>
    <!--网页标题左侧显示-->
    <link rel="icon" href="site.ico" type="image/x-icon">
    <!--收藏夹显示图标-->
    <link rel="shortcut icon" href="site.ico" type="image/x-icon">
</head>
<html>
<frameset rows="100%">
    <frame src="https://www.rainlf.com"/>
    <noframes><a href="https://www.rainlf.com">Click here</a></noframes>
</frameset>
</html>
```

