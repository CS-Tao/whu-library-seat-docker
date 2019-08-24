# whu-library-seat-docker

> 图书馆抢座软件后台服务部署方案

## 镜像仓库

- 项目地址: [https://github.com/CS-Tao/whu-library-seat-docker](https://github.com/CS-Tao/whu-library-seat-docker)
- 镜像仓库:
  - [cstao/seat-db](https://cloud.docker.com/repository/docker/cstao/seat-db)
  - [cstao/seat-records](https://cloud.docker.com/repository/docker/cstao/seat-records)
  - [cstao/seat-ghauth](https://cloud.docker.com/repository/docker/cstao/seat-ghauth)
  - [cstao/seat-nginx](https://cloud.docker.com/repository/docker/cstao/seat-nginx)

## 环境变量

```
# 镜像用户
SEAT_ADMIN_NAME=cstao
# 数据库管理员密码
SEAT_DB_ROOT_PASSWD=****
# 在 GitHub 申请的客户端密钥
SEAT_GHAUTH_CLIENT_SCERET=****
```
