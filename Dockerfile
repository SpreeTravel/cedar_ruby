FROM heroku/cedar:14
MAINTAINER D.H. Bahr <dhbahr@gmail.com>

RUN git clone https://github.com/rbenv/rbenv.git /opt/rbenv
RUN git clone https://github.com/rbenv/ruby-build.git /opt/rbenv/plugins/ruby-build
RUN git clone https://github.com/rbenv/rbenv-gem-rehash.git /opt/rbenv/plugins/rbenv-gem-rehash

RUN /opt/rbenv/plugins/ruby-build/install.sh

ENV PATH /opt/rbenv/bin:$PATH

RUN echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv.sh
RUN echo 'eval "$(rbenv init -)"' >> .bashrc

# Install multiple versions of ruby
ENV CONFIGURE_OPTS --disable-install-doc

RUN rbenv install 2.2.3
RUN rbenv global 2.2.3
RUN ruby -v
RUN gem install bundler
