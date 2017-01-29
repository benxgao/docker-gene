FROM mhart/alpine-node:6

RUN apk update && apk upgrade && apk add git
RUN rm -rf /var/cache/apk/*

EXPOSE 3000

RUN mkdir -p /usr/workspace

WORKDIR /usr/workspace/
RUN git clone https://github.com/loql/ecs-content.git .
RUN npm i

CMD ["npm", "start"]
