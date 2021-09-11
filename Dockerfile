FROM ruby:3.0.1
RUN apt-get update -qq
WORKDIR /webapp
COPY . /webapp
RUN bundle install
