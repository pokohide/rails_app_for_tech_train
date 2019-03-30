FROM ruby:2.5.0
MAINTAINER pokohide

ENV APP_HOME /rails_app_for_tech_train
ENV LANG=C.UTF-8 BUNDLE_GEMFILE=$APP_HOME/Gemfile BUNDLE_JOBS=2 BUNDLE_PATH=/bundle

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs npm

RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile $APP_HOME/Gemfile
ADD Gemfile.lock $APP_HOME/Gemfile.lock

RUN gem install bundler
RUN bundle config --global silence_root_warning 1
RUN bundle install

ADD . $APP_HOME

CMD ['bundle', 'exec', 'rails', 's']
