FROM alpine

LABEL maintainer="t.heinrich@live.de"
LABEL version="1.0.4"

# install all the dependencies
RUN apk add --update \
    nodejs \
    nodejs-npm \
    python \
    make \
    g++

# install drakov
RUN npm install -g drakov@1.0.4

# remove all the unnecessary packages again
RUN apk del \
    python \
    make \
    g++ \
  && rm -rf /var/cache/apk/*

EXPOSE 3000

WORKDIR /docs

ENTRYPOINT ["drakov"]
