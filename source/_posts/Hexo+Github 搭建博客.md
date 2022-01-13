---
title: Hexo+Github 搭建博客
date: 2021-07-29 18:43:36
tag: [blog]
---

使用`Hexo`搭建博客，配置`Next`主题，并搭配`Github`实现自动构建与部署。

## 搭建博客

### 安装

在安装好的了`Node`环境中，运行
```shell
npm install hexo-cli -g
```

### 初始化

```shell
hexo init blog
cd blog && npm install --registry=https://registry.npm.taobao.org
```

### 运行博客

```shell
hexo s
```

访问[`http://localhost:4000`](http://localhost:4000) 就可以看到默认博客页面了



## 安装主题

### 安装

```shell
cd blog
git clone https://github.com/iissnan/hexo-theme-next themes/next
```

### 修改配置

修改站点配置文件 `_config.yml`

```shell
theme: next
```

## 自动部署

### 创建项目

在`Github`上新建仓库`xxx.github.io`，其中`xxx`为`Github`用户名。

### 配置

在项目根目录添加文件`.travis.yml`文件，将代码推送到`main`分支，并开通对应的`travis ci`功能。

```yaml
sudo: false
language: node_js
node_js:
  - 14
cache: npm
branches:
  only:
    - main # build master branch only
script:
  - hexo generate # generate static files
deploy:
  provider: pages
  skip-cleanup: true
  github-token: $GH_TOKEN
  keep-history: true
  on:
    branch: main
  local-dir: public
```
在`Github Pages`皮配置页中，将`Source`改为`gh-pages`分支

![image-20220113194914673](/images/image-20220113194914673.png)

等待一段时间，访问`https://xxx.github.io/`就可以看到发布后的博客了



### 注意

5.0+版本 的`hexo`，需要手动安装`swig`，才能使`Next`主题被正确的渲染

```shell
npm i -S hexo-renderer-swig
```



