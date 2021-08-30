---
title: Hexo+Next+Github 搭建博客
date: 2021-07-29 18:43:36
tags:
---



记录下使用`Hexo`博客框架，`Next`主题和`Github`搭建博客的过程，并配置的博客的自动构建与部署。
## 搭建博客

### 安装 Hexo

`Hexo`是一款快速、简洁且高效的博客框架，在安装好的了`Node`环境中，运行以下命令即可
```shell
npm install hexo-cli -g
```

### 初始化博客目录

```shell
hexo init blog
cd blog
npm install --registry=https://registry.npm.taobao.org
```

### 运行博客

```shell
hexo s
```

访问默认的地址[`http://localhost:4000`](http://localhost:4000) 就可以看到默认博客页面了


## 部署至 Github

### 创建项目

在`Github`上新建仓库`rainlf.github.io`，其中`rainlf`为你的`Github`用户名。

### 添加CI文件

在博客根目录添加文件`.travis.yml`文件，将代码推送到`Main`分支，并开通对应的`TravisCI`功能。

```yaml
sudo: false
language: node_js
node_js:
  - 14 # node version
cache: npm
branches:
  only:
    - main # build main branch only
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
然后，在`Github Pages`页面中，将`Source`改为`gh-pages`分支
等待一段时间，访问`https://rainlf.github.io/`就可以看到发布后的博客了

## 安装 Next 主题

### 下载主题
`Hexo`默认带有了`Landscape`主题，使用其他主题需要自行下载，这里推荐使用`Next`主题
访问[`https://github.com/iissnan/hexo-theme-next/releases`](https://github.com/iissnan/hexo-theme-next/releases) 可以下载到`Next`最新的`release版本`

### 安装主题
解压文件后，重命名文件夹为`next`，并放置在博客根目录`/theme/`路径下
修改`/_config.yml`，将博客主题改为`next`

```yaml
# Extensions
# theme: landscape
theme: next
```

### 注意

5.0+版本 的`hexo`，需要手动安装`swig`，才能使`Next`主题被正确的渲染

```shell
npm i -S hexo-renderer-swig
```

## 参考

1. [Hexo 官方中文文档](https://hexo.io/zh-cn/docs/)
2. [Next 官方中文文档](http://theme-next.iissnan.com/getting-started.html)

