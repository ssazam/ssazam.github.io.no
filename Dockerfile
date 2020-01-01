FROM ruby:latest

RUN gem install bundler:2.0.0.pre.1

ADD ./Gemfile /web/Gemfile
ADD ./Gemfile.lock /web/Gemfile.lock

EXPOSE 4000

WORKDIR /web

RUN bundle install