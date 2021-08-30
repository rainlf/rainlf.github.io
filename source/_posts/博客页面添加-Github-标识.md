---
title: 博客页面添加 Github 标识角
tag: [blog]
date: 2022-01-17 17:20:59
category:
---

## 步骤

在下面网站用选择自己喜欢的图标：

> https://github.blog/2008-12-19-github-ribbons/  
>
> https://tholman.com/github-corners/

修改 `/themes/next/layout/_layout.swig`

```html
<div class="headband"></div>

<!-- 刚刚复制的代码 -->

<header class="header" itemscope itemtype="http://schema.org/WPHeader">
  <div class="header-inner">{% include '_partials/header/index.swig' %}</div>
</header>
```

