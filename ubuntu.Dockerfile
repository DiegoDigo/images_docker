FROM ubuntu:18.04
MAINTAINER Diego Delmiro <di3g0d0ming05@gmail.com>

RUN useradd -ms /bin/bash gulp_bower 

RUN apt-get update -y -qq && \
    apt-get install -y -qq git curl wget 

RUN apt-get install -y -qq npm && \
    apt-get ln -s /usr/bin/nodejs /usr/bin/node

RUN npm install --global bower && \
    npm install --global gulp

USER gulp_bower
