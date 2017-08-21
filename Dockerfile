FROM alpine
MAINTAINER Torsten Heinrich t.heinrich@live.de

RUN apk add --update \
    nodejs \
    nodejs-npm \
    python \
    make \
    g++ \
  && rm -rf /var/cache/apk/*

RUN npm install -g drakov@1.0.4

EXPOSE 3000

WORKDIR /docs

ENTRYPOINT ["drakov"]
