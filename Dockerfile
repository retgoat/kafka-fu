FROM ruby:3.0.3

RUN mkdir /kafka-fu
WORKDIR /kafka-fu

COPY Gemfile /kafka-fu/Gemfile
COPY Gemfile.lock /kafka-fu/Gemfile.lock

RUN gem install bundler:2.3.8
RUN bundle config set force_ruby_platform true
RUN bundle install
COPY . /kafka-fu

