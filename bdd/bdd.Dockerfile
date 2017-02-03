FROM mhart/alpine-node:6

MAINTAINER Ben Gao <career.bengao@gmail.com>

RUN apk update && \
    apk upgrade && \
    apk add curl && \
    rm -rf /var/cache/apk/*

WORKDIR /usr/workspace/

ADD .npmrc ./
ADD ./features ./

RUN npm update && \
    npm i -g cucumber

ADD bdd_start.sh ./
