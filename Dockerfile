FROM ruby:2.7.2

ENV BUNDLER_VERSION=2.3.19
RUN gem install bundler

RUN mkdir /app

WORKDIR /app

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

RUN bundle install
ADD . /app