FROM ruby:2.6.1

ENV LANG C.UTF-8
ENV TZ=Asia/Tokyo

WORKDIR /usr/src/app

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - &&\
    curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - &&\
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list &&\
    apt-get update -qq &&\
    apt-get install -y --no-install-recommends nodejs yarn mysql-client

COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install

COPY package.json .
COPY yarn.lock .
RUN yarn install