FROM heroku/cedar:14
MAINTAINER D.H. Bahr <dhbahr@gmail.com>

RUN apt-get update
RUN apt-get upgrade -y --force-yes
RUN apt-get purge -y ruby
RUN apt-get install -y --force-yes \
    software-properties-common

RUN apt-add-repository ppa:brightbox/ruby-ng
RUN apt-get update
RUN apt-get install -y --force-yes \
    ruby2.2 \
    ruby2.2-dev \
    ruby-switch

RUN ruby-switch --set ruby2.2

RUN ruby -v
RUN gem install bundler
