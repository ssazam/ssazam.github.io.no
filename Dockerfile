FROM ruby:latest

RUN gem install bundler -v '2.1.2'

ADD ./Gemfile /web/Gemfile
ADD ./Gemfile.lock /web/Gemfile.lock

EXPOSE 4000

WORKDIR /web

RUN bundle install