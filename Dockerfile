FROM ruby:2.4.1

RUN apt-get update -qq && apt-get install -y build-essential

# for postgres
RUN apt-get install -y libpq-dev

# for nokogiri
RUN apt-get install -y libxml2-dev libxslt1-dev

# for capybara-webkit
RUN apt-get install -y libqt4-webkit libqt4-dev xvfb

# for a JS runtime
RUN apt-get install -y nodejs

RUN gem install bundler

ENV APP_HOME /myapp

RUN mkdir $APP_HOME
WORKDIR $APP_HOME

# ADD Gemfile* $APP_HOME/

RUN cd /myapp/
# RUN bundle install
