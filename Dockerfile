FROM ruby:2.6-alpine

LABEL maintainer="Sergey Besedin <kr3ssh@gmail.com>"

RUN \
  apk add --no-cache \
    build-base \
    xz \
    bash \
    less \
    git \
    nodejs \
    nodejs-npm \
    postgresql-client \
    tzdata \
  && gem install bundler \
  && npm i -g yarn

ENV APP_HOME=/app

RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

RUN gem install rails

VOLUME [ "$APP_HOME" ]
