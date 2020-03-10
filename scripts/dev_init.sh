#!/bin/bash

yarn check;
if [ ! $? = 0 ] ; then
  yarn install;
fi

bundle install;
rm -f /usr/src/app/tmp/pids/server.pid;
bin/webpack-dev-server &
rails s -b 0.0.0.0 -p 3000
