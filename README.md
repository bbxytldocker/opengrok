基于docker的 OpenGrok 方案

## Dockerfile 说明
本 Dockerfile 对应的镜像为: https://hub.docker.com/r/bbxytl/opengrok/

## 文件说明
- Dockerfile: 镜像文件
- bashrc: build 镜像需要的配置环境
- start-run: 启动脚本
- docker-compose.yml: `docker-compose up` 命令需要的配置文件
- see-code.sh: 启动容器的命令项脚本
- packs:
	- apache-tomcat.tar.gz: 下载好的 tomcat 压缩包(这里的包为: apache-tomcat-8.5.23.tar.gz)
	- opengrok.tar.gz: 下载好的 opengrok 压缩包(这里的包为: opengrok-1.1-rc15.tar.gz)
	- 上面的压缩包也可以自己去下载，下载完后，修改为对应的上面的名字放到 packs 里即可使用

## 镜像说明
镜像使用的Dockerfile为: https://github.com/bbxytldocker/opengrok

## 使用镜像
1. 使用 `see-code.sh` 启动, 增加 查看的项目代码
打开 `see-code.sh` 文件，添加参数 `-v` 后跟要挂载的目录到 `/projects` 下
```
sh ./see-code.sh
```

2. 使用 `docker-compose up 命令`, 增加 查看的项目代码
打开 `docker-compose.yml` 文件，在 `volumes` 下添加对应的项目，映射到 `/projects` 下


