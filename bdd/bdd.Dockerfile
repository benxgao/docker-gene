FROM mhart/alpine-node:6

MAINTAINER Ben Gao <career.bengao@gmail.com>

WORKDIR /workspace

ADD .npmrc ./

RUN npm update && npm i -g cucumber

ADD bdd_start.sh ./
