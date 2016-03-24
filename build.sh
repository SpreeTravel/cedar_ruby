#!/bin/bash

set -e
set -x

apt-get update
apt-get upgrade -y --force-yes
apt-get install -y --force-yes \
    rbenv

rbenv install 2.2.3
rbenv global 2.2.3
gem install bundler

echo -e "\nSuccess!"
exit 0
