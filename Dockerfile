FROM ruby:3.0.3
LABEL maintainer="william@goodfy.me" author="Goodfy Labs"

RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=true apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -yqq \
    && apt-get install -yqq --no-install-recommends curl \ 
                            build-essential \
                            libpq-dev  \
    && curl -sL https://deb.nodesource.com/setup_16.x | bash - \
    && apt-get install -y nodejs vim \
    && rm -rf /var/lib/apt/lists/* 

COPY . /usr/src/app
WORKDIR /usr/src/app 

RUN gem install rails:6.1.7.3 bundler:2.3.6
COPY Gemfile* /usr/src/app

# RUN npm init -y
RUN npm install -g yarn 
# COPY package.json /usr/src/app

COPY . /usr/src/app
EXPOSE 3022:3022

RUN bundle install
RUN yarn install
RUN bundle binstubs bundler 
RUN bundle exec rails active_storage:install
RUN bundle exec rails webpacker:install

COPY . /usr/src/app

CMD ["bin/rails","s","-e","development", "-p", "3022", "-b","0.0.0.0"]