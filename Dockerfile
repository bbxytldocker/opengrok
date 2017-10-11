# Simple Dockerfile
FROM alpine:latest

MAINTAINER bbxytl <bbxytl@gmail.com>

# Modify the Repository
RUN cd /etc/apk/  \
	&& mv repositories repositories.bk \
	&& echo "http://mirrors.ustc.edu.cn/alpine/v3.5/main" > repositories  \
	&& echo "http://mirrors.ustc.edu.cn/alpine/v3.5/community" >> repositories

RUN apk add --no-cache --update \
	ctags \
	bash \
	git \
	subversion \
	git-svn \
	openjdk8 \
# Cleanup
	&& rm -rf \
	/tmp/*  \
	/var/cache/* \
	/var/log/* \
	/var/tmp/* \
	&& mkdir /var/cache/apk

COPY ./packs/apache-tomcat-8.5.23.tar.gz /tmp/
COPY ./packs/opengrok-1.1-rc15.tar.gz /tmp/
COPY ./bashrc /tmp/
RUN cd /tmp/ \
	&& mv bashrc ~/.bashrc \
	&& mkdir -p /projects \
	&& mkdir -p /opengrok/packs \
	&& mkdir -p /opengrok/index-data \

COPY ./start-run /usr/local/bin/start-run

ENV TERM=xterm-256color
ENTRYPOINT ["sh", "/usr/local/bin/start-run"]

