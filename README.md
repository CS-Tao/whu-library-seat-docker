# whu-library-seat-docker

> 图书馆抢座软件后台服务部署方案

[![Docker Image CI](https://github.com/CS-Tao/whu-library-seat-docker/workflows/Docker%20Image%20CI/badge.svg)](https://github.com/CS-Tao/whu-library-seat-docker/actions)

## 镜像仓库

- [GitHub packages](https://github.com/CS-Tao/whu-library-seat-docker/packages)

## 项目依赖

- docker
- docker-compose

## 服务节点

- recorder
- ghauth
- nginx

## 部署方法

1. 准备工作

    ```bash
    # 克隆本仓库
    git clone https://github.com/CS-Tao/whu-library-seat-ghauth.git
    # 登录到 docker.pkg.github.com，使用 GitHub 用户名登录
    # 密码需要申请带有 [repo, read:package] 权限的 token
    docker login docker.pkg.github.com
    ```

1. 添加环境变量文件`.env`到项目根目录，文件内容如下

    ```
    # 数据库管理员密码
    SEAT_DB_ROOT_PASSWD=****
    # 在 GitHub 申请的客户端密钥
    SEAT_GHAUTH_CLIENT_SCERET=****
    # 数据加密密钥
    SEAT_RECORDS_ENCRYPT_KEY=****
    ```

1. 拉取镜像

    ```bash
    # 拉取远程镜像
    docker-compose pull
    ```

1. 添加 ssl 文件到`nginx/ssl`目录下，包括以下四个文件，使用`cerbot-auto`生成
    - cert.pem
    - chain.pem
    - fullchain.pem
    - privkey.pem

1. 启动容器组

    ```bash
    docker-compose up -d
    ```
