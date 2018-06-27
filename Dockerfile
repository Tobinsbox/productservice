FROM ruby:2.2.7
MAINTAINER docker-library <docker-library@github.com>
RUN mkdir -p /app
WORKDIR /app
COPY Gemfile /app
RUN bundle install --quiet
COPY . /app
EXPOSE 9092
CMD ["rackup","-o","0.0.0.0","-p","9092"]

