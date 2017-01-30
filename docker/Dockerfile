FROM mhart/alpine-node:6

MAINTAINER Ben Gao <xingbingao@gmail.com>

RUN apk update && apk upgrade && apk add git && rm -rf /var/cache/apk/*

ADD package.json /tmp/package.json
RUN cd /tmp && npm i
RUN mkdir -p /usr/workspace && cp -a /tmp/node_modules /usr/workspace/

WORKDIR /usr/workspace/

ADD ./src ./src
ADD docker/app_start.sh ./
ADD .npmrc ./
ADD package.json ./
