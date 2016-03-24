FROM heroku/cedar:14
MAINTAINER D.H. Bahr <dhbahr@gmail.com>

COPY ./build.sh /tmp/build.sh
RUN LC_ALL=C DEBIAN_FRONTEND=noninteractive /tmp/build.sh \
  && rm -rf /var/lib/apt/lists/*
